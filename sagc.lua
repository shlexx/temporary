local spcoil = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
		local hum = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
		getgenv().speed = hum.WalkSpeed
		spcoil.Name = "SpeedCoil"
		spcoil.RequiresHandle = false
		spcoil.CanBeDropped = false
		spcoil.TextureId = "rbxassetid://99170415"

		spcoil.Equipped:Connect(function()
			hum.WalkSpeed = getgenv().speed*2
		end)

		spcoil.Unequipped:Connect(function()
			hum.WalkSpeed = getgenv().speed
		end)
local gravcoil = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
		getgenv().gravity = workspace.Gravity
		gravcoil.Name = "GravityCoil"
		gravcoil.RequiresHandle = false
		gravcoil.CanBeDropped = false
		gravcoil.TextureId = "rbxassetid://16619617"

		gravcoil.Equipped:Connect(function()
			workspace.Gravity = getgenv().gravity/4
		end)

		gravcoil.Unequipped:Connect(function()
			workspace.Gravity = getgenv().gravity
		end)
local cam = workspace.CurrentCamera
		local equipped = false
		local plr = game.Players.LocalPlayer
		local hrp = plr.Character:FindFirstChild("HumanoidRootPart")
		local jetpack = Instance.new("Tool", plr.Backpack)
		jetpack.Name = "Jetpack"
		jetpack.TextureId = "rbxassetid://31310254"
		jetpack.RequiresHandle = false
		jetpack.CanBeDropped = false
		
		jetpack.Equipped:Connect(function()
			equipped = true
		end)
		
		jetpack.Unequipped:Connect(function()
			equipped = false
		end)
		
		jetpack.Activated:Connect(function()
			if equipped then
				local bodyGyro = Instance.new("BodyGyro", hrp)
				local force = Instance.new("BodyVelocity", hrp)
				bodyGyro.cframe = cam.CoordinateFrame
				force.velocity = Vector3.new(0,30,0)
			end
		end)
		
		jetpack.Deactivated:Connect(function()
			hrp:FindFirstChildOfClass("BodyGyro"):Destroy()
			hrp:FindFirstChildOfClass("BodyVelocity"):Destroy()
		end)
local grappling = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
		grappling.Name = "GrapplingHook"
		grappling.CanBeDropped = false
		grappling.RequiresHandle = false
		grappling.TextureId = "rbxassetid://30327988"
		local mouse = game.Players.LocalPlayer:GetMouse()
		local equipped = false
		local tweenSpeed = 1
		local TweenService = game:GetService("TweenService")

		grappling.Equipped:Connect(function()
			equipped = true
		end)

		grappling.Unequipped:Connect(function()
			equipped = false
		end)

		grappling.Activated:Connect(function()
			if equipped == true then
				if mouse.Target then
					TweenService:Create(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {CFrame = mouse.Hit + Vector3.new(0, 2, 0)}):Play()
				end
			else end
		end)
