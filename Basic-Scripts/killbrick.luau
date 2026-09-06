-- add a part in workspace and rename it to whatever you want then insert a script in workspace write this down
local killbrick = game.Workspace.killbrick

killbrick.Touched:Connect(function(hit)
    local character = hit.Parent
    local humanoid = character:FindFirstChild("Humanoid")
    if humanoid then
      humanoid:TakeDamage(5) -- changeable number
    end
  end)
