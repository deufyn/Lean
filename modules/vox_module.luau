local VoxModules = {}

local PlayersData: { any } = {}
local FruitsData: { any } = {}

function VoxModules.get_islands(): { { Name: string, CFrame: CFrame } }
    local IslandsData: { { Name: string, CFrame: CFrame } } = {}

    for _, island: Folder in ipairs(workspace.Map:GetChildren()) do
        local base = island:FindFirstChild('Base') :: Model

        if base then
            local base_part: BasePart? = base:FindFirstChildWhichIsA('BasePart')

            table.insert(IslandsData, {
                Name = island.Name,
                CFrame = base_part.CFrame
            })
        end
    end

    return IslandsData
end

return VoxModules
