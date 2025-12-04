-- An addon that greets the user with a message when they type /hello

SLASH_HELLO1 = "/hello"
SlashCmdList["HELLO"] = function(msg)
    if msg and msg ~= "" then
        print("Hello world", msg)
    else
        print("You should provide a name.")
    end
end