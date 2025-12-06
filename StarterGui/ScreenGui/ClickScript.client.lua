local plr = game.Players.LocalPlayer
local mous = plr:GetMouse()
local gui = script.Parent 
local sound = gui.vineboom
local db = 0
local rep = game:GetService("ReplicatedStorage")
local remote = rep.KILLNPC
local ts = game:GetService("TweenService")
local thanosimage = gui.Frame.ThanosImage
local thanostxt = gui.Frame.ThanosText
local info = TweenInfo.new(1,Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false)
local t1 = ts:Create(thanosimage, info, {ImageTransparency = 1})
local t2 = ts:Create(thanostxt, info, {TextTransparency = 1})
mous.Button1Down:Connect(function() --checks whenever the player clicks with the left mouse button
	if db == 0 then
		remote:FireServer()
		db = 1
		gui.Enabled = true
		sound:Play()
		t1:Play()
		t2:Play()
		task.wait(1)
		gui.Enabled = false
		thanosimage.ImageTransparency = 0
		thanostxt.TextTransparency = 0
		task.wait(2)
		db = 0
	end
end)
