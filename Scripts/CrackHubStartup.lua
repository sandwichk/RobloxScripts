-- [[ Helou devs V2 ]] --
local Table = function(Table) for i,v in pairs(Table or {}) do if typeof(v) == 'table' then return v end; end; end
local Config = Table(({...})) or {
      Name = nil,
}
if Config.Name == nil then return end
getgenv().UniversalTextToLicratdasdasda = Config.Name

spawn(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sandwichk/RobloxScripts/main/Scripts/UniversalTextToLicratdasdasda.lua"))();
end)
