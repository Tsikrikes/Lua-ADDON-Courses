SLASH_TYPE1 = "/type"
SlashCmdList["TYPE"] = function(msg)
    if msg and msg ~= "" then
        print("You typed:", msg)
    else
        print("You didn't type anything.")
    end
end
