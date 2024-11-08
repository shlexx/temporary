local spcoil = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
		local hum = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
		local speed = 32
		spcoil.Name = "SpeedCoil"
		spcoil.RequiresHandle = false
		spcoil.CanBeDropped = false
		spcoil.TextureId = "rbxassetid://99170415"

		spcoil.Equipped:Connect(function()
			hum.WalkSpeed = speed
		end)

		spcoil.Unequipped:Connect(function()
			hum.WalkSpeed = 16
		end)
local gravcoil = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
		local grav = 50
		gravcoil.Name = "GravityCoil"
		gravcoil.RequiresHandle = false
		gravcoil.CanBeDropped = false
		gravcoil.TextureId = "rbxassetid://16619617"

		gravcoil.Equipped:Connect(function()
			workspace.Gravity = grav
		end)

		gravcoil.Unequipped:Connect(function()
			workspace.Gravity = 196.2
		end)
