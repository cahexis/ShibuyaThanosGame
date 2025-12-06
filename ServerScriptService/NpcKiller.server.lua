local rep = game:GetService("ReplicatedStorage")
local remote = rep:WaitForChild("KILLNPC")
local npcs = workspace.Npcs

-- handles the removal of half of the npcs
remote.OnServerEvent:Connect(function()
	local totalnpcs = npcs:GetChildren()
	local total = #totalnpcs
	local half = math.floor(total/2)
	for i = 1, half do
		totalnpcs[i].HumanoidRootPart.ParticleEmitter.Enabled = true
		totalnpcs[i].Humanoid.Health = 0
		
	end
end)
