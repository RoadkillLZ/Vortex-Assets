-- in the vortex Explorer insert a part then insert a script in that part write this down
local part = script.Parent
local speed = 2

while true do
  part.CFrame = part.CFrame * CFrame.Angles(0, math.rad(speed), 0)
  task.wait()
end
