repeat task.wait() until game:IsLoaded()

local MarketplaceService = cloneref(game:GetService('MarketplaceService'))
local Players = cloneref(game:GetService('Players'))

local LocalPlayer = Players.LocalPlayer

local actual_rep = `https://raw.githubusercontent.com/deufyn/Lean/main/games`

local places_id = {
    [104067066727140] = {
        loader = `{actual_rep}/vox_seas.lua`
    }
}

if places_id[game.PlaceId] then
    loadstring(game:HttpGet(places_id[game.PlaceId].loader))()
else
    LocalPlayer:Kick(
        `Hello {LocalPlayer.DisplayName}!\n This script has no support for {MarketplaceService:GetProductInfo(game.PlaceId).Name}.`
    )
end
