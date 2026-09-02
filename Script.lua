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



local runservice = game:GetService("RunService")

local noclip = false

local Section = MainTab:CreateSection("Hndak tshtet de ")

local Toggle = MainTab:CreateToggle({
	Name = "Dnav diwara ra bche",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		noclip = (Value)

	end,
})
local Paragraph = MainTab:CreateParagraph({Title = "waxte to dnav dywara da bche b tamrene pshte chand sanya de tamrt !", Content = ""})



runservice.Stepped:Connect(function()
	if noclip then
		local char = game.Players.LocalPlayer.Character
		
		if char then
			for _, part in ipairs(char:GetDescendants()) do
				if part:IsA("BasePart") then
					part.CanCollide = not noclip
				end
				
			end
		end
	end
end)


local Slider = MainTab:CreateSlider({
	Name = "Nezeke o deratya camere",
	Range = {0, 250},
	Increment = 1,
	Suffix = "",
	CurrentValue = 70,
	Flag = "Slider1", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		game.Workspace.CurrentCamera.FieldOfView = Value
	end,
})





--teleport tab--------------------------------

local teleportTab = Window:CreateTab("Teleports", nil) -- Title, Image

local Label = teleportTab:CreateLabel("to de blocke dayne jhake o de teleport be blocke", nil, Color3.fromRGB(66, 218, 24), false) -- Title, Icon, Color, IgnoreTheme
local Label = teleportTab:CreateLabel("hndak yarya shol nakt !", nil, Color3.fromRGB(218, 0, 0), false) -- Title, Icon, Color, IgnoreTheme

--parta 1-------------
local partama = Instance.new("Part")
partama.Parent = workspace
partama.Anchored = true
partama.CanCollide = false
partama.BrickColor = BrickColor.new("Lime green")



local Button = teleportTab:CreateButton({
	Name = "blocke dayna ",
	Callback = function()
		partama.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

		
	end,
})

local Button = teleportTab:CreateButton({
	Name = "teleport be blocke ",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.Position = partama.Position
	end,
})

local tweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(4)



local Button = teleportTab:CreateButton({
	Name = "bfre nk blocke",
	Callback = function()
		local goal = {
			
			Position = partama.Position
			
		}
		local tween = tweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart,tweenInfo,goal)
		
		tween:Play()
	end,
})


-- parta 2--------
local parta2 = Instance.new("Part")
parta2.Parent = workspace
parta2.Anchored = true
parta2.CanCollide = false
parta2.BrickColor = BrickColor.new("Really blue")

local Section = teleportTab:CreateSection("bot")

local Paragraph = teleportTab:CreateParagraph({Title = "bot chya ?? / bra auto farma de bezhye hare vere o hara wera ha o de kt", Content = "MHKZ hub"})

local Button = teleportTab:CreateButton({
	Name = "blocke 2 spawn ka ",
	Callback = function()
		parta2.Position = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):FindFirstChild("HumanoidRootPart")
	end,
})



local Toggle = teleportTab:CreateToggle({
	Name = "bot e blocke 2 / player ta decht blocke 2 !",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		local bot1 = Value
		if bot1 == true then
			local humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			local character = game.Players.LocalPlayer.Character
			
			if character and humanoid then
				humanoid:MoveTo(parta2.Position)
				
			end
			
		end
		
	end,
})












--parta 3----------
local parta3 = Instance.new("Part")
parta3.Parent = workspace
parta3.Anchored = true
parta3.CanCollide = false
parta3.BrickColor = BrickColor.new("New Yeller")


local Button = teleportTab:CreateButton({
	Name = "blocke 3 spawn ka ",
	Callback = function()
		parta3.Position = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):FindFirstChild("HumanoidRootPart")
	end,
})
