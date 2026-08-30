
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
	Name = "My hub",
	Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
	LoadingTitle = "loading My hub",
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
		Title = "My hub | Key",
		Subtitle = "by MHKZ",
		Note = "Only owner have the Key !!", -- Use this to tell the user how to get a key
		FileName = "Key", -- It is recommended to use something unique, as other scripts using Rayfield may overwrite your key file
		SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = {"MHKZ first script"} -- List of keys that the system will accept, can be RAW file links (pastebin, github, etc.) or simple strings ("hello", "key22")
	}
})

local MainTab = Window:CreateTab("🏠 Main", nil) -- Title, Image
local Section = MainTab:CreateSection("main")


Rayfield:Notify({
	Title = "you execute script",
	Content = "welcome ",
	Duration = 3,
	Image = nil,
})

local Button = MainTab:CreateButton({
	Name = "Kill Ur Self",
	Callback = function()
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health = 0
	end,
})


local Slider = MainTab:CreateSlider({
	Name = "Walkspeed",
	Range = {0, 500},
	Increment = 1,
	Suffix = " Speed",
	CurrentValue = 16,
	Flag = "Slider1", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = (Value)
	end,
})

local Input = MainTab:CreateInput({
	Name = "jump",
	CurrentValue = "32",
	PlaceholderText = "Jumpower",
	RemoveTextAfterFocusLost = false,
	Flag = "Input1",
	Callback = function(Text)
		
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower = (Text)
		
	end,
})


local Dropdown = MainTab:CreateDropdown({
	Name = "rang",
	Options = {"sor", "shin" ,"zar"},
	CurrentOption = {"sor"},
	MultipleOptions = false,
	Flag = "Dropdown1", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Options)
		
		print(Options)
	end,
})

