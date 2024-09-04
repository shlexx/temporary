local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "test", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Properties",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddTextbox({
	Name = "Walk Speed",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end	  
})
Tab:AddTextbox({
	Name = "Jump Power",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end	  
})
Tab:AddTextbox({
	Name = "Gravity",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		workspace.Gravity = Value
	end	  
})
local Tab2 = Window:MakeTab({
	Name = "Lobby",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab2:AddButton({
	Name = "Become A Boy",
	Callback = function()
      		game.ReplicatedStorage.Remotes.SetGender:FireServer("L")
  	end    
})
Tab2:AddButton({
	Name = "Become A Girl",
	Callback = function()
      		game.ReplicatedStorage.Remotes.SetGender:FireServer("R")
  	end    
})
local Tab3 = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Tab4 = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
OrionLib:Init()
