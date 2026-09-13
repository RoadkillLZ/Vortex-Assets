-- INSTRUCTIONS:
-- go into workspace and make a part name it whatever you want and that will be the part you have to touch to teleport
-- make another part and name it TpPart. That is where the player is gonna teleport to
-- put this script in the part the player has to touch to teleport(Script not local Script)

local portal = script.Parent
local TpPart = game.Workspace.TpPart

portal.Touched:Connect(function(hit)
local character = hit.Parent
local humanoid = character:FindFirstChild("Humanoid")

if humanoid then
character:PivotTo(TpPart.CFrame)
end
end)