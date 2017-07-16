-- repeatedly calls a lua script, eg "repeat enable 1 months cleanowned"; to disable "repeat disable cleanowned" 

repeatingScripts=repeatingScripts or {}

local args = {...}
local function repeatScript()
    local script = function()
        local t = {}
        for i=4,#args do 
            table.insert(t,args[i])
        end
        return t
    end
    script=script() 
    dfhack.run_script(table.unpack(script))
    repeatingScripts[args[4]]=dfhack.timeout(tonumber(args[2]),args[3],repeatScript) -- just here, I think
end
if args[1]~="disable" then repeatScript() else dfhack.timeout_active(repeatingScripts[args[2]],nil) end