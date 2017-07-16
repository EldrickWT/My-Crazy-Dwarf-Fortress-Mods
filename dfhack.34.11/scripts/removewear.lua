-- Resets all items in your fort to 0 wear

local args = {...}

local reset = (args[1] == 'reset')

local count = 0

function removeWear(item)
	 count = count + 1
	
	 if reset then
		 item:setWear(0)
	 end
end

for _,item in ipairs(df.global.world.items.all) do
	 if (item.wear > 0) then
		 removeWear(item)
	 end
end

if reset then
	 print("Items reset to 0 wear: "..count)
else
	 print("Total worn items: "..count)
	 print("Use 'removewear reset' to reset all of your items back to new condition")
end