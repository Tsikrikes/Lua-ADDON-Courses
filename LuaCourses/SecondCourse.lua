-- An addon that greets the user with a message when they type /hello

SLASH_HELLO1 = "/hi"
SlashCmdList["HELLO"] = function(msg)
    if msg == "" then
        print("Hello world", msg)
    else
        print("You didnt type it correctly")
    end
end
