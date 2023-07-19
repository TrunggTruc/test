
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

-- Tạo frame đen
local blackFrame = Instance.new("Frame")
blackFrame.Size = UDim2.new(1, 0, 1, 0)
blackFrame.BackgroundColor3 = Color3.new(0, 0, 0)
blackFrame.BackgroundTransparency = 1

-- Thiết lập giới hạn FPS
RunService.RenderStepped:Connect(function()
    wait(1/15) -- Giới hạn FPS thành 15
end)

-- Bật/tắt tính năng bằng phím L
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.L then
        if blackFrame.Parent then
            blackFrame.Parent = nil -- Tắt frame đen nếu đã được kích hoạt trước đó
        else
            blackFrame.Parent = game.Players.LocalPlayer.PlayerGui -- Bật frame đen nếu chưa được kích hoạt trước đó 
        end 
    end 
end)

