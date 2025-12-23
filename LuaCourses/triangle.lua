print("Give a number for height : ")
local height = io.read("*n")
for i = 1, height do
    local spaces = string.rep(" ", height - i)
    local stars = string.rep("*", 2 * i - 1)
    print(spaces .. stars)
end