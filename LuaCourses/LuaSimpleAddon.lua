local f = CreateFrame("Frame")
if not login then
    login = 0
end
local mounts = {"Horse","Tiger","Dragon"}
local combatCount = 0
f:RegisterEvent("PLAYER_LOGIN")
f:RegisterEvent("PLAYER_REGEN_DISABLED")
f:RegisterEvent("PLAYER_REGEN_ENABLED")
f:SetScript("OnEvent", function (self,event)
    local localizedClass, class = UnitClass("player")
    local localizedRace, race = UnitRace("player")
    if event == "PLAYER_LOGIN" then
        login = login + 1
        print("You have logged in " .. login .. " times!")
        for i, mount in ipairs(mounts) do
            print(i .. ". " .. mount)  
        end
    end
    if event == "PLAYER_REGEN_DISABLED" then
        combatCount = combatCount + 1
        print("You have entered combat " .. combatCount .. "times!")
    elseif event == "PLAYER_REGEN_ENABLED" then
        print("You leave Combat")
    end
    if localizedClass and class == "MAGE" then
        print("Master of Arcane!")
    elseif localizedRace and race == "Orc" then
        print("Strength and Honor")
    else
        print("Welcome Adventurer!")
    end
end)

-- TOC FILES -- 

-- ## Interface: 11302
-- ## Title: Login Counter
-- ## Author: You
-- ## SavedVariables: login
-- LoginCounter.lua