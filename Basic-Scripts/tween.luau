local TweenService = game:GetService("TweenService")
local part = game.Workspace.Part

local tweenInfo = TweenInfo.new(5, Enum.EasingStyle.Linear)

local goal = {
Position = Vector3.new(45, 2, 0)
}

local tween = TweenService:Create(part, tweenInfo, goal)
task.wait(2)
tween:Play()

-- NOTES: ON THE TWEENINFO YOU PASS IN 2 PARAMETERS
the TIME is how many Seconds it will take for it to reach to its GOAL. THE SECOND PARAMETER IS THE EASINGSTYLE THERES MULTIPLE STYLES YOU COULD SEARCH UP FOR EXAMPLE: Enum.EasingStyle.Bounce. BOUNCE IS THE STYLE. FOR THE GOAL ITS WHERE YOU WANT THE PART TO ANIMATE TO LIKE GO TO ITS USUALLY A TABLE. WHY? BECAUSE YOU CAN STORE MULTIPLE DESTINATIONS YOU WANT YOUR PART TO ANIMATE TO/ GO TO. I can't explain the rest that good go on YouTube and search up brawldev and go to his playlists and click advanced scripting tutorial and find tweenService and watch it all 