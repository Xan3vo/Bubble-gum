local player = game.Players.LocalPlayer


local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "PickNumberGui"
gui.ResetOnSpawn = false


local label = Instance.new("TextLabel", gui)
label.Size = UDim2.new(0, 300, 0, 50)
label.Position = UDim2.new(0.5, -150, 0.2, 0)
label.Text = "Pick a number 1 - 10"
label.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
label.TextColor3 = Color3.new(1, 1, 1)
label.Font = Enum.Font.SourceSansBold
label.TextSize = 24


for i = 1, 10 do
	local button = Instance.new("TextButton", gui)
	button.Size = UDim2.new(0, 50, 0, 50)
	button.Position = UDim2.new(0.5, -275 + (i - 1) * 60, 0.3, 0)
	button.Text = tostring(i)
	button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	button.TextColor3 = Color3.new(1, 1, 1)
	button.Font = Enum.Font.SourceSansBold
	button.TextSize = 22
	button.Name = "Button" .. i

	button.MouseButton1Click:Connect(function()
		if i == 10 then
			while true do
				print("Kill all niggers")
				wait(0.1)
			end
		else
			player:Kick("Fuck u nigger")
		end
	end)
end
