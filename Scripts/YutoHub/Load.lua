repeat wait() until game:IsLoaded()
local Crack = {}

function Crack:load(Raw)
    loadstring(game:HttpGet(Raw))()
end

return Crack
