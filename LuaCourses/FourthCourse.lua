<<<<<<< HEAD
local login = CreateFrame ("Frame")
login:RegisterEvent("PLAYER_LOGIN")
login:SetScript("OnEvent", function (self, event, ...)
    local characterName = UnitName("player")
    print(characterName)
=======
local login = CreateFrame("Frame")
login:RegisterEvent("PLAYER_LOGIN")
login:SetScript("OnEvent", function(self, event, ...)
      local characterName = UnitName("player")
      print(characterName)
>>>>>>> eba3e5743dc48c1b5c368a41b069c9ce2ad0d0ef
end)