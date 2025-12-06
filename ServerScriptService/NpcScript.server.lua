local rep = game:GetService("ReplicatedStorage")
local spawnpoints = {game.Workspace.spawn1, game.Workspace.spawn2}
local looper = 0


--loop to continue spawning of the Npc's
while looper == 0 do
	
	task.wait(5)
	local spawnchoser = math.random(1,2)
	local npcclone = rep.Npc:Clone()
	npcclone.Parent = workspace.Npcs
	
	if spawnchoser == 1 then
		npcclone.PrimaryPart.CFrame = workspace.spawn1.CFrame + Vector3.new(math.random(-11,11), workspace.spawn1.Position.Y, math.random(-11,11))
		npcclone.Humanoid:MoveTo(game.Workspace.spawn2.Position)
	else
		npcclone.PrimaryPart.CFrame = workspace.spawn2.CFrame + Vector3.new(math.random(-11,11), workspace.spawn2.Position.Y, math.random(-11,11))
		npcclone.Humanoid:MoveTo(game.Workspace.spawn1.Position)
	end
end
