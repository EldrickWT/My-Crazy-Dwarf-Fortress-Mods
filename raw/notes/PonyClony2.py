
i = open("creature_original_lazy_spider.txt") #change green text to multiply another caste file
o = open("creature_original_lazy_spider_ponycloned.nfo","w") #This is the output file, you can rename it later, I do not recommend setting it as the same file as input.

running = 1
lines = []
copy = []
copying = 0
copies = 5
index = 0
numone = 1
numtwo = 1

lines = i.readlines()

while running == 1:
    index += 1
    if index+1 > len(lines):
        running = 0
        break

    if str(lines[index]).lstrip().startswith("[SELECT_CASTE:ALL]"):
        copying = 0
        if len(copy) != 0:
            num = copies
            while num > 0:
                for line in copy:
                    if str(line).lstrip().startswith("[CASTE:"):
                        line = line.replace("]", str(numone)+"]")
                        print line
                        numone+=1
                        if numone > copies:
                            numone = 1
                        lines.insert(index-1, line)
                        index+=1
                    elif str(line).lstrip().startswith("[SELECT_CASTE:"):
                        line = line.replace("]", str(numtwo)+"]")
                        numtwo+=1
                        if numtwo > copies:
                            numtwo = 1
                        lines.insert(index-1, line)
                        index+=1
                    else:
                        lines.insert(index-1, line)
                        index+=1
                num -= 1
            copy = []


    if str(lines[index]).lstrip().startswith("[CASTE:"):
        print lines[index]
        if copying == 0:
            copying = 1
        if len(copy) != 0:
            num = copies
            while num > 0:
                for line in copy:

                    if str(line).lstrip().startswith("[CASTE:"):
                        line = line.replace("]", str(numone)+"]")
                        print line
                        numone+=1
                        if numone > copies:
                            numone = 1
                        lines.insert(index-1, line)
                        index+=1


                    else:
                        lines.insert(index-1, line)
                        index+=1
                num -= 1
            copy = []
    if str(lines[index]).lstrip().startswith("[SELECT_CASTE:"):
        if str(lines[index]).lstrip().startswith("[SELECT_CASTE:ALL]"):
            copying = 0
        elif copying == 0:
            copying = 1
        if len(copy) != 0:
            num = copies
            while num > 0:
                for line in copy:
                    if str(line).lstrip().startswith("[SELECT_CASTE:"):
                        line = line.replace("]", str(numtwo)+"]")
                        numtwo+=1
                        if numtwo > copies:
                            numtwo = 1
                        lines.insert(index-1, line)
                        index+=1
                    else:
                        lines.insert(index-1, line)
                        index+=1
                num -= 1
            copy = []
    if copying == 1:
        copy.append(lines[index])

for line in lines:
    o.write(line)

