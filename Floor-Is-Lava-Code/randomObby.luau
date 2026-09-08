-- INSTRUCTIONS: i recommend doing all of this in workspace first
-- in workspace make a folder and name it whatever you want
-- then make your obbies. lets say you make 3 obbies(not really)
-- one obby is a big part, other is medium, last is small
-- paste all those into your folder then paste your folder into serverstorage
-- put this as a script in ServerScriptService

-- GETING VARIABLES

local ServerStorage = game:GetService("ServerStorage")

local ObbyFolder = ServerStorage:WaitForChild("Folder") -- replace "Folder" with your Folder Name
local spawnPart = workspace:WaitForChild("spawnPart") -- replace with your desired place you want your obbies to spawn on

local Obbies = ObbyFolder:GetChildren()
local randomObby = Obbies[math.random(1, #Obbies)]:Clone()
randomObby:PivotTo(spawnPart.CFrame)
Obbies.Parent = workspace

-- NOTE: Final script is coming soon :)