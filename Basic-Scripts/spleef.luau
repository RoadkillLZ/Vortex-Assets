-- INSTRUCTIONS: i recommend doing all of this in workspace first
-- Make a folder name it whatever you want and add Platforms
-- platforms need to be in air and be anchored 
-- put this script in workspace or serverscriptservice

local folder = workspace:WaitForChild("Folder") -- change to folder name

for _, Parts in ipairs(folder:GetChildren()) do -- replace "Parts" with your parts name in your folder
    if Parts:IsA("BasePart") then
        local oldPos = Parts.Position
        local oldCol = Parts.Color

        Parts.Touched:Connect(function(hit)
            local humanoid = hit.Parent:FindFirstChild("Humanoid")
            if humanoid then
                Parts.Color = Color3.FromRGB(255, 0, 0)
                task.wait(1)
                Parts.Anchored = false
                task.wait(2.3)
                Parts.Anchored = true
                Parts.Color = oldCol
                Parts.Position = oldPos
            end
        end
    end)
end

-- DM me for any errors.
-- NOTE: a safer Version will shortly be made
-- mb for the dryness