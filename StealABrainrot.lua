local GROUP_LINK = "https://roblox.com.ge/communities/6471407011/" 

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "GroupCheckUI"
screenGui.Parent = player:WaitForChild("PlayerGui")
screenGui.IgnoreGuiInset = true
screenGui.ResetOnSpawn = false

local prompt = Instance.new("Frame")
prompt.Name = "GroupPrompt"
prompt.Parent = screenGui
prompt.Size = UDim2.new(0, 430, 0, 240)
prompt.Position = UDim2.new(0.5, -215, 0.5, -120)
prompt.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
prompt.BorderSizePixel = 0
prompt.Visible = true

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = prompt

local stroke = Instance.new("UIStroke")
stroke.Thickness = 2
stroke.Color = Color3.fromRGB(90, 90, 255)
stroke.Transparency = 0.3
stroke.Parent = prompt

local title = Instance.new("TextLabel")
title.Name = "Title"
title.Parent = prompt
title.Text = "⭐ Scripts Premium Bloqueados"
title.Size = UDim2.new(0.9, 0, 0.25, 0)
title.Position = UDim2.new(0.05, 0, 0.05, 0)
title.BackgroundTransparency = 1
title.Font = Enum.Font.GothamBold
title.TextSize = 24
title.TextColor3 = Color3.fromRGB(255, 255, 255)

local message = Instance.new("TextLabel")
message.Name = "Message"
message.Parent = prompt
message.TextWrapped = true
message.BackgroundTransparency = 1
message.Font = Enum.Font.Gotham
message.TextSize = 18
message.TextColor3 = Color3.fromRGB(220, 220, 220)
message.Position = UDim2.new(0.05, 0, 0.30, 0)
message.Size = UDim2.new(0.9, 0, 0.45, 0)
message.Text = "Para desbloquear o script premium é necessário que você entre no nosso grupo para apoiar nosso trabalho! Obrigado pelo apoio ❤️"

local copyButton = Instance.new("TextButton")
copyButton.Name = "CopyLinkButton"
copyButton.Parent = prompt
copyButton.Text = "COPIAR LINK DO GRUPO"
copyButton.Size = UDim2.new(0.8, 0, 0.2, 0)
copyButton.Position = UDim2.new(0.1, 0, 0.75, 0)
copyButton.BackgroundColor3 = Color3.fromRGB(60, 90, 255)
copyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
copyButton.Font = Enum.Font.GothamBold
copyButton.TextSize = 20
copyButton.AutoButtonColor = false

local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(0, 8)
btnCorner.Parent = copyButton

task.spawn(function()
	prompt.BackgroundTransparency = 1
	title.TextTransparency = 1
	message.TextTransparency = 1
	copyButton.TextTransparency = 1

	for i = 1, 10 do
		local a = i * 0.1
		prompt.BackgroundTransparency = 1 - a
		title.TextTransparency = 1 - a
		message.TextTransparency = 1 - a
        copyButton.TextTransparency = 1 - a
		task.wait(0.03)
	end
end)

copyButton.MouseButton1Click:Connect(function()
	setclipboard(GROUP_LINK)
	copyButton.BackgroundColor3 = Color3.fromRGB(70, 200, 120)
	copyButton.Text = "LINK COPIADO! ✅"
	task.wait(2)
	copyButton.BackgroundColor3 = Color3.fromRGB(60, 90, 255)
	copyButton.Text = "COPIAR LINK DO GRUPO"
end)
