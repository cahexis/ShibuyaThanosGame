local plr = game.Players.LocalPlayer
local cam = workspace.CurrentCamera
local campart = workspace:WaitForChild("campart")
local char = plr.Character or plr.CharacterAdded:Wait()
local root = char:WaitForChild("HumanoidRootPart")

-- sets a fixed camera for the game
root.Anchored = true
cam.CameraType = Enum.CameraType.Custom
task.wait(0.1)
cam.CameraType = Enum.CameraType.Scriptable
cam.CFrame = CFrame.new(campart.Position) * CFrame.Angles(math.rad(-90),0, math.rad(144.125))
