local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "test", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "RNG"
})
Section:AddTextbox({
	Name = "Roll Number",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.ReplicatedStorage.Remotes.UpdateHighestNumber:FireServer(Value)
	end	  
})
local Tab2 = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab2:AddTextbox({
	Name = "Walk Speed",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end	  
})
Tab2:AddTextbox({
	Name = "Jump Power",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end	  
})
Tab2:AddTextbox({
	Name = "Gravity",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		workspace.Gravity = Value
	end	  
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
Tab2:AddButton({
	Name = "Switch Gender",
	Callback = function()
      		if game.Players.LocalPlayer.Team == game.Teams.Boys then
                game.ReplicatedStorage.Remotes.SetGender:FireServer("R")
            else
                game.ReplicatedStorage.Remotes.SetGender:FireServer("L")
            end
  	end    
})
OrionLib:Init()
