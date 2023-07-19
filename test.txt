-- Tạo frame mới
local frame = Instance.new("Frame")
frame.Size = UDim2.new(1, 0, 1, 0)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 0
frame.Parent = game:GetService("Workspace")

-- Thiết lập giới hạn FPS là 15
game:GetService("RunService").RenderStepped:Connect(function()
    game:GetService("RunService").Stepped:Wait()
end)

-- Bật/tắt tính năng với phím L
local userInputService = game:GetService("UserInputService")
local enabled = true

userInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.L then
        enabled = not enabled

        if enabled then
            print("Tính năng đã được bật.")
        else
            print("Tính năng đã được tắt.")
        end

        -- Xử lý logic của tính năng khi bật hoặc tắt.
    end
end)