local LavaPart = game.Workspace.LavaPart -- change to part name

LavaPart.Touched:Connect(function(hit)
	local character = hit.Parent
	local humanoid = character:FindFirstChild("Humanoid")

	if humanoid then
		humanoid.Health = 0
	end
end)

local TweenService = game:GetService("TweenService")

local tweenInfo = TweenInfo.new(10, Enum.EasingStyle.Linear) -- changeable info

local goal = {
	Size = Vector3.new(DESIRED HEIGHT)
}

local tween = TweenService:Create(LavaPart, tweenInfo, goal)

task.wait(2)
tween:Play()

--NOTES: go watch brawldev advanced scripting tutorials to understand this code and don't be a skid
