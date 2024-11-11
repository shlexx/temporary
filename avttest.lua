local args = {
    [1] = {
        ["WalkAnimation"] = 0,
        ["Accessories"] = {},
        ["RightLegColor"] = nil --[[Color3]],
        ["MoodAnimation"] = 14618207727,
        ["LeftLegColor"] = nil --[[Color3]],
        ["JumpAnimation"] = 0,
        ["ProportionScale"] = 0,
        ["BodyTypeScale"] = 1,
        ["ClimbAnimation"] = 0,
        ["LeftArmColor"] = nil --[[Color3]],
        ["Face"] = 0,
        ["Pants"] = 0,
        ["RightArmColor"] = nil --[[Color3]],
        ["DepthScale"] = 1,
        ["WidthScale"] = 1,
        ["SwimAnimation"] = 0,
        ["RightArm"] = 16112852240,
        ["GraphicTShirt"] = 0,
        ["Head"] = 16112852219,
        ["Shirt"] = 0,
        ["RightLeg"] = 16112848598,
        ["RunAnimation"] = 0,
        ["Torso"] = 16112848747,
        ["FallAnimation"] = 0,
        ["TorsoColor"] = nil --[[Color3]],
        ["IdleAnimation"] = 0,
        ["LeftArm"] = 16112852224,
        ["HeadScale"] = 1,
        ["HeightScale"] = 1,
        ["HeadColor"] = nil --[[Color3]],
        ["LeftLeg"] = 16112848600
    }
}

game:GetService("ReplicatedStorage").BloxbizRemotes.CatalogOnApplyOutfit:FireServer(unpack(args))
