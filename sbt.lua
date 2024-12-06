local isalt = false
local alt = game.Players.gunsimulator99

if ifalt then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,1000,0)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
else
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,1000,0)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    while task.wait(.025) do
        game:GetService("ReplicatedStorage"):WaitForChild("b"):FireServer(alt.Character.Head)
    end
end
