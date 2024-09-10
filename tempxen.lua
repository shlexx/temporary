_Hawk = "ohhahtuhthttouttpwuttuaunbotwo"

local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/TheHanki/HawkHUB/main/LibSources/HawkLib.lua", true))()
local Window = Hawk:Window({
ScriptName = "Project Xeno v0.01",
DestroyIfExists = true, 
Theme = "Dark" --Themes: Pink, White, Dark
})

Window:Close({
visibility = true, 
Callback = function()
    Window:Destroy()
end,
})

Window:Minimize({
visibility = true,
OpenButton = true, 
Callback = function()
end,
})
local tab1 = Window:Tab("Main") 

local newsec = tab1:Section("Avrwm's favorites")
local Players = game:GetService("Players")

newsec:Toggle("Triggerbot", false, function(state)
isToggleOn = state

if isToggleOn then
    print("Toggle On")
else
    print("Toggle Off")
end
end)

newsec:TextBox("Triggerbot Key", "Change triggerbot's key", function(txt)
local userInput = txt:upper()
local userInputKeyCode = Enum.KeyCode[userInput]

if userInputKeyCode then
    toggleKey = userInputKeyCode
else
    print("Invalid toggle key. Using default key (E).")
end
end)

local Players = game:GetService("Players")
local lp = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait() and Players.LocalPlayer
local mouse = lp:GetMouse()

local function getTarget(instance)
for i, v in ipairs(Players:GetPlayers()) do
    if v.Character and (instance == v.Character or instance:IsDescendantOf(v.Character)) then
        return true
    end
end
end

local inputService = game:GetService("UserInputService")
local isKeyPressed = false

inputService.InputBegan:Connect(function(input)
if input.KeyCode == toggleKey then
    isKeyPressed = true
end
end)

inputService.InputEnded:Connect(function(input)
if input.KeyCode == toggleKey then
    isKeyPressed = false
end
end)

local function activateTriggerbot()
if isToggleOn and isKeyPressed and getTarget(mouse.Target) then
    mouse1press()
    task.wait()
    mouse1release()
end
end

game:GetService("RunService").RenderStepped:Connect(function()
activateTriggerbot()
end)



local newsec = tab1:Section("Blatant")

local toggleEnabled = false
local killAllConnection

local function killPlayers()
getgenv().kill = true
while getgenv().kill and task.wait(0.1) do
    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer and v.Character and not v.Character:FindFirstChild("ForceField") then
            pcall(function()
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Shoot"):FireServer(Vector3.new(1, 1, 1), Vector3.new(1, 1, 1), v.Character.RightUpperArm.Part, Vector3.new(1, 1, 1))
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Stab"):FireServer(v.Character.UpperTorso)
            end)
        end
    end
end
end

local function toggleKillAll()
if toggleEnabled then
    killAllConnection = task.spawn(function()
        killPlayers()
    end)
else
    getgenv().kill = false
    if killAllConnection then
        killAllConnection:Cancel()
    end
end
end

local toggleee = newsec:Toggle("Kill All", false, function(value)
toggleEnabled = value
toggleKillAll()
if value then
    print("Activated!")
else
    print("Disabled!")
end
end)




local toggleEnabled = false
local loopKillEnabled = false
local loopTarget = ""

local killAllConnection
local loopKillConnection

local function killPlayer(player)
if player.Character and not player.Character:FindFirstChild("ForceField") then
    pcall(function()
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Shoot"):FireServer(Vector3.new(1, 1, 1), Vector3.new(1, 1, 1), player.Character.RightUpperArm.Part, Vector3.new(1, 1, 1))
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Stab"):FireServer(player.Character.UpperTorso)
    end)
end
end

local function loopKillPlayer(username)
local targetPlayer = game.Players:FindFirstChild(username)
if targetPlayer then
    loopKillConnection = task.spawn(function()
        while loopKillEnabled and task.wait(0.1) do
            killPlayer(targetPlayer)
        end
    end)
end
end

local function toggleKillActions()
if toggleEnabled then
    killAllConnection = task.spawn(function()
        while getgenv().kill and task.wait(0.1) do
            for i, v in pairs(game.Players:GetPlayers()) do
                if v ~= game.Players.LocalPlayer then
                    killPlayer(v)
                end
            end
        end
    end)
else
    getgenv().kill = false
    if killAllConnection then
        killAllConnection:Cancel()
    end
end
end


local toggleEnabled = false
local loopKillEnabled = false
local loopTarget = ""

local killAllConnection
local loopKillConnection

local function killPlayer(player)
if player.Character and not player.Character:FindFirstChild("ForceField") then
    pcall(function()
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Shoot"):FireServer(Vector3.new(1, 1, 1), Vector3.new(1, 1, 1), player.Character.RightUpperArm.Part, Vector3.new(1, 1, 1))
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Stab"):FireServer(player.Character.UpperTorso)
    end)
end
end

local function loopKillPlayer(username)
local targetPlayer = game.Players:FindFirstChild(username)
if targetPlayer then
    loopKillConnection = task.spawn(function()
        while loopKillEnabled and task.wait(0.1) do
            killPlayer(targetPlayer)
        end
    end)
else
end
end

local function toggleKillActions()
if toggleEnabled then
    killAllConnection = task.spawn(function()
        while getgenv().kill and task.wait(0.1) do
            for i, v in pairs(game.Players:GetPlayers()) do
                if v ~= game.Players.LocalPlayer then
                    killPlayer(v)
                end
            end
        end
    end)
else
    getgenv().kill = false
    if killAllConnection then
        killAllConnection:Cancel()
    end
end
end

local toggleee = newsec:Toggle("LoopKill", false, function(value)
toggleEnabled = value
toggleKillActions()
if value then
    print("LoopKill Activated!")
else
    print("LoopKill Disabled!")
end
end)

local textboxee = newsec:TextBox("Enter Username", "Username...", function(value)
loopTarget = value
if loopKillEnabled then
    if loopKillConnection then
        loopKillConnection:Cancel()
    end
    loopKillPlayer(loopTarget)
end
end)
