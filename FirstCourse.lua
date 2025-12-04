-- An addon that greets the user with a message when they log in

local login = CreateFrame("Frame") --making the variable
login:RegisterEvent("PLAYER_LOGIN") -- we are setting the event for our variable
login:SetScript("OnEvent", function(self, event, ...) --we are typing what the variable is gonna do when the event happens
    if event == "PLAYER_LOGIN" then
      print("LuaSays: Hello")
    end
  end)
