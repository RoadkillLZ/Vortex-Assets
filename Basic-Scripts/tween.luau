-- go on YouTube and search up brawldev then go to his playlists and find Advanced Scripting tutorial then find tweenservice tutorial. Watch it all before using this script

local TweenService = game:GetService("TweenService")
local part = game.Workspace.Part

local tweenInfo = TweenInfo.new(5, Enum.EasingStyle.Linear)

local goal = {
Position = Vector3.new(45, 2, 0)
}

local tween = TweenService:Create(part, tweenInfo, goal)
task.wait(2)
tween:Play()

-- has been tested and works fine