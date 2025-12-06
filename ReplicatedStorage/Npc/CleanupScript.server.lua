local hum = script.Parent.Humanoid

hum:GetPropertyChangedSignal("Health"):Connect(function()
	task.wait(2)
	script.Parent:Destroy()
end)
