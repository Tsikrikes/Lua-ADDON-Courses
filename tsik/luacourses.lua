-- [[ Sum Course ]]

-- print("Give a number for x : ")
-- local x = io.read("*n")
-- print("Give a number for y : ")
-- local y = io.read("*n")
-- local sum = x + y
-- print(sum)

-- [[ Triangle ]]

-- print("Give number for the height : \n")
-- local height = io.read("*n")
-- for i = 1, height do
--     local spaces = string.rep(" ",height - i)
--     local stars = string.rep("*",2 * i - 1)
--     print(spaces .. stars)
-- end
   
-- [[ Bubblesort ]]

-- function bubbleSort(arr)
--     local n = #arr

--     for i = 1, n - 1 do
--         for j = 1, n - i do
--             if arr[j] > arr[j + 1] then
--                 -- swap
--                 arr[j], arr[j + 1] = arr[j + 1], arr[j]
--             end
--         end
--     end
-- end

-- -- Παράδειγμα χρήσης
-- local numbers = {5, 3, 8, 4, 2}

-- bubbleSort(numbers)

-- for i = 1, #numbers do
--     print(numbers[i])
-- end


-- ΤΕΣΤ 3 --

local f = CreateFrame("Frame")

f:RegisterEvent("PLAYER_LOGIN")
f:SetScript("OnEvent", function ()
    local localizedClassName,class = UnitClass("player") -- Η UnitClass επιστρεφει παντα 2 τιμες
    if localizedClassName and (class  == "MAGE") then
        print("Master of the Arcane!")
    else
        print("Welcome adventurer!")
    end
end)

-- -- ΤΕΣΤ 4 --

local f = CreateFrame("Frame")

f:RegisterEvent("PLAYER_REGEN_DISABLED")
f:SetScript("OnEvent", function ()
    print("Combat Started!")
end)

-- -- ΤΕΣΤ 5 --

local f = CreateFrame("Frame")
local combatCount = 0

f:RegisterEvent("PLAYER_REGEN_DISABLED")
f:RegisterEvent("PLAYER_REGEN_ENABLED")
f:SetScript("OnEvent", function (self, event)
    combatCount = combatCount + 1
    outCombat = outCombat + 1
    if event == "PLAYER_REGEN_DISABLED" then
        print("Combat Started!" .. combatCount)
    else if event == "PLAYER_REGEN_ENABLED" then
        print("You are out of Combat")
    end
end)


-- ΤΕΣΤ 6 -- 


if not login then
    login = 0
end

local f = CreateFrame("Frame")

f:RegisterEvent("PLAYER_LOGIN")
f:SetScript("OnEvent", function (self, event)
    login = login + 1
    if event == "PLAYER_LOGIN" then
        print("you have logged in " .. login .. " times!")
    end
end)

-- -- TOC --

##SavedVariables : login


-- -- ΤΕΣΤ 7 --

local frame = CreateFrame("Frame")
local mounts = {"Horse", "Tiger", "Dragon"}

frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function (self, event)
    if event == "PLAYER_LOGIN" then
        for i, mount in ipairs(mounts) do
            print(i .. ". " .. mount)
        end
    end
end)

-- ΤΕΣΤ 4-5-7 ΜΑΖΙ --

if not login then
    login = 0
end
local f = CreateFrame("Frame")
local combatCount = 0
local mounts = {"Horse","Tiger","Dragon"}
f:RegisterEvent("PLAYER_LOGIN")
f:RegisterEvent("PLAYER_REGEN_DISABLED")
f:RegisterEvent("PLAYER_REGEN_ENABLED")
f:SetScript("OnEvent", function (self, event)
    if event == "PLAYER_LOGIN" then
        login = login + 1
        print("You logged in " .. login .. " times!")
        for i,mount in ipairs(mounts) do
        print(i .. ". " .. mount)
        end
    elseif event == "PLAYER_REGEN_DISABLED" then
        combatCount = combatCount + 1
        print("You are in Combat " .. combatCount .. " times!")
    elseif event == "PLAYER_REGEN_ENABLED" then
        print("You are out of Combat!")
    end
end)

-- -- TOC FILES -- 

## Interface: 11302
## Title: Login Counter
## Author: You
## SavedVariables: login
LoginCounter.lua

