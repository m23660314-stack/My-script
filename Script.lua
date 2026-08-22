local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "MyGui"
gui.Parent = player:WaitForChild("PlayerGui")

local part1 = game.Workspace:WaitForChild("Items"):WaitForChild("Berry"):WaitForChild("Handle")




-- Main window
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 250, 0, 160)
frame.Position = UDim2.new(0.5, -125, 0.5, -80)
frame.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
frame.BorderSizePixel = 0
frame.Parent = gui

local urstroke = Instance.new("UIStroke")
urstroke.Parent = frame
urstroke.Thickness = 2
urstroke.Color = Color3.fromRGB(0, 0, 0)

-- Make window draggable
local drag = Instance.new("UIDragDetector")
drag.Parent = frame

-- Minimize button
local minimize = Instance.new("TextButton")
minimize.Size = UDim2.new(0, 30, 0, 28)
minimize.Position = UDim2.new(1, -120, 0, 10)
minimize.Text = "-"
minimize.TextSize = 24
minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
minimize.Parent = frame



-- Maximize button
local maximize = Instance.new("TextButton")
maximize.Size = UDim2.new(0, 30, 0, 28)
maximize.Position = UDim2.new(1, -80, 0, 10)
maximize.Text = "□"
maximize.TextSize = 20
maximize.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
maximize.Parent = frame

--madeeee
local made = Instance.new("TextLabel")
made.Parent = frame
made.Text = "Made By M7e"
made.Position = UDim2.new(0, 10,0.04, 0)
made.Size = UDim2.new(0, 100,0, 30)
made.FontFace = Font.fromEnum(Enum.Font.IndieFlower)
made.TextScaled = true
made.BackgroundTransparency = 1
made.TextSize = 14






-- Close button
local close = Instance.new("TextButton")
close.Size = UDim2.new(0, 30, 0, 28)
close.Position = UDim2.new(1, -40, 0, 10)
close.Text = "X"
close.TextSize = 20
close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
close.Parent = frame

-- Main button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 175, 0, 63)
button.Position = UDim2.new(0.5, -87, 0.08, 48)
button.Text = "idk just press"
button.TextSize = 14
button.BorderSizePixel = 0
button.Parent = frame

--second main button
local button1 = Instance.new("TextButton")
button1.Size = UDim2.new(0, 175, 0, 63)
button1.Position = UDim2.new(0.5, -87, 0.08, 48)
button1.Text = "Off It"
button1.TextSize = 14
button1.BorderSizePixel = 0
button1.Parent = frame
button1.Visible = false


-- Close
close.MouseButton1Click:Connect(function()
	gui:Destroy()
end)

-- Minimize


local part = Instance.new("Part")
part.Parent = workspace
part.Size = Vector3.new(6,1, 6.2)
part.Position = Vector3.new(0,0,0)
part.Anchored = true
part.Transparency = 1

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")



local minimized = false
local minimizesize = minimize.Position

minimize.MouseButton1Click:Connect(function()
	minimized = not minimized
	button.Visible = not button.Visible

	if minimized then
		frame.Size = UDim2.new(0, 250, 0, 50)
		made.Position = UDim2.new(0, 10,0.2, 0)
		minimize.Position = UDim2.new(1, -80,0, 10)
		maximize.Visible = false
	else
		frame.Size = UDim2.new(0, 250, 0, 160)
		made.Position = UDim2.new(0, 10,0.04, 0)
		maximize.Visible = true
		minimize.Position = minimizesize
	end
end)



-- Maximize
local normalSize = frame.Size
local normalsizee = button.Size
local normalposition = button.Position
local madesize = made.Size
local madeposition = made.Position

maximize.MouseButton1Click:Connect(function()
	button.Visible = true
	if frame.Size == normalSize then
		frame.Size = UDim2.new(0, 400, 0, 250)
		button.Size = UDim2.new(0, 300,0, 63)
		button.Position = UDim2.new(0.5, -150,0, 48)
		made.Position = UDim2.new(0, 30,0.03, 0)
		made.Size = UDim2.new(0, 250,0, 30)
		minimize.Visible = false


		
		
	else
		frame.Size = normalSize
		button.Size = normalsizee
		button.Position = normalposition
		made.Position = madeposition
		made.Size = madesize
		minimize.Visible = true
		
	end
end)


local yes = true
local folder = game.Workspace:WaitForChild("Items")


button.MouseButton1Click:Connect(function()
	--button.Visible = false
	--button1.Visible = true
	--yes = false
	
	part1.CFrame = rootPart.CFrame * CFrame.new(0,5,0)
	part1.Anchored = false
	
	for _, Berry in ipairs(folder:GetChildren()) do
		local handle = Berry:FindFirstChild("Handle")
		if handle then
			handle.CFrame = rootPart.CFrame * CFrame.new(0,5,0)
		end
	end
	
	
	
	
	
	
	--if yes == false then
		--while task.wait(0.01) do
			--part.Position = rootPart.Position + Vector3.new(0,-3, 0)
		--end
	--end

end)

--button1.MouseButton1Click:Connect(function()
	--button.Visible = true
	--button1.Visible = false
	--yes = true
	--if yes == true then
		--while task.wait(0.01) do
			--part.Position = Vector3.new(100,0,100)
		--end
		
	--end
	
	
--end)





if yes == true  then
	while task.wait(0.5) do
		button.BackgroundColor3 = Color3.fromRGB(math.random(1,255) , math.random(1,255) , math.random(1,255))
	end
	
end


