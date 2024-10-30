local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Vayhood Hangout Troll Menu",
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "vay"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
local Tab2 = Window:CreateTab("afking", 4483362458) -- Title, Image
local Button = Tab2:CreateButton({
   Name = "disable afk",
   Callback = function()
   
   end,
})
local Button2 = Tab2:CreateButton({
   Name = "fake enable afk",
   Callback = function()
   
   end,
})
local Button3 = Tab2:CreateButton({
   Name = "fake disable afk",
   Callback = function()
   
   end,
})
local Tab3 = Window:CreateTab("nametag (client)", 4483362458) -- Title, Image
local Input = Tab3:CreateInput({
   Name = "set level",
   PlaceholderText = "number",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
   
   end,
})
local Input2 = Tab3:CreateInput({
   Name = "set rank",
   PlaceholderText = "text",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
   
   end,
})
local ColorPicker = Tab:CreateColorPicker({
    Name = "set level color",
    Color = Color3.fromRGB(255, 255, 255),
    Flag = "calapica", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        
    end
})
Rayfield:LoadConfiguration()
