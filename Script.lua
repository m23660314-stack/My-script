local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
	Name = "MHKZ hub",
	Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
	LoadingTitle = "loading MHKZ hub",
	LoadingSubtitle = "by MHKZ",
	ShowText = "Rayfield", -- for mobile users to unhide Rayfield, change if you'd like
	Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

	ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

	DisableRayfieldPrompts = false,
	DisableBuildWarnings = false, -- Prevents Rayfield from emitting warnings when the script has a version mismatch with the interface.

	-- ScriptID = "sid_xxxxxxxxxxxx", -- Your Script ID from developer.sirius.menu — enables analytics, managed keys, and script hosting

	ConfigurationSaving = {
		Enabled = false,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "My Hub"
	},

	Discord = {
		Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
		Invite = "noinvitelink", -- The Discord invite code, do not include Discord.gg/. E.g. Discord.gg/ABCD would be ABCD
		RememberJoins = true -- Set this to false to make them join the Discord every time they load it up
	},

	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
		Title = "MHKZ hub | Key",
		Subtitle = "by MHKZ",
		Note = "Btne xodane scripte key ye hay ", -- Use this to tell the user how to get a key
		FileName = "Key", -- It is recommended to use something unique, as other scripts using Rayfield may overwrite your key file
		SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = {"MHKZ first script"} -- List of keys that the system will accept, can be RAW file links (pastebin, github, etc.) or simple strings ("hello", "key22")
	}
})

Rayfield:Notify({
	Title = "Xerhati bo scripta ma",
	Content = "Xerhati bo scripta maa",
	Duration = 5,
	Image = nil,
})

local MainTab = Window:CreateTab("Player ta", nil) -- Title, Image
local Section = MainTab:CreateSection("hame tshten pidve bo player ta dvere dana")
local Section = MainTab:CreateSection("raqame halbjera na 7arfa !")

local Input = MainTab:CreateInput({
	Name = "Sr3a ta",
	CurrentValue = "16",
	PlaceholderText = "raqame !",
	RemoveTextAfterFocusLost = false,
	Flag = "Input1",
	Callback = function(Text)
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = (Text)
	end,
})


local Input = MainTab:CreateInput({
	Name = "jump a ta",
	CurrentValue = "32",
	PlaceholderText = "raqame !",
	RemoveTextAfterFocusLost = false,
	Flag = "Input1",
	Callback = function(Text)
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower = (Text)
	end,
})


local Section = MainTab:CreateSection("Xoina player ta ")
local Button = MainTab:CreateButton({
	Name = "Xwa koshtn",
	Callback = function()
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health = 0
	end,
})


local Button = MainTab:CreateButton({
	Name = "Fol krna xoina xwa ",
	Callback = function()
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health = 100
	end,
})


local teleportTab = Window:CreateTab("Teleports", nil) -- Title, Image

local Label = teleportTab:CreateLabel("to de blocke dayne jhake o de teleport be blocke", nil, Color3.fromRGB(218, 0, 0), false) -- Title, Icon, Color, IgnoreTheme
local Label = teleportTab:CreateLabel("hndak yarya shol nakt !", nil, Color3.fromRGB(218, 0, 0), false) -- Title, Icon, Color, IgnoreTheme


local part = Instance.new("Part")
part.Parent = workspace
part.Anchored = true
part.CanCollide = false
part.Name = "Parttt"


local Button = teleportTab:CreateButton({
	Name = "blocke dayna ",
	Callback = function()
		part.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

		
	end,
})

local Button = teleportTab:CreateButton({
	Name = "teleport be blocke ",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.Position = workspace.Parttt.Position
	end,
})
