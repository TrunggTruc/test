
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local isBlackScreenEnabled = false

-- Function to enable black screen effect
local function enableBlackScreen()
    isBlackScreenEnabled = true
    
    -- Code to enable black screen effect and reduce GPU and CPU load goes here
    
    print("Black screen enabled")
end

-- Function to disable black screen effect
local function disableBlackScreen()
    isBlackScreenEnabled = false
    
    -- Code to disable black screen effect and restore normal GPU and CPU load goes here
    
    print("Black screen disabled")
end

-- Listen for key press event
UserInputService.InputBegan:Connect(function(input, processed)
    if input.KeyCode == Enum.KeyCode.L and not processed then
        if isBlackScreenEnabled then
            disableBlackScreen()
        else
            enableBlackScreen()
        end
    end
end)

-- Update loop to reduce GPU and CPU usage when the black screen is enabled
RunService.Heartbeat:Connect(function()
    if isBlackScreenEnabled then
        
        -- Code to reduce GPU and CPU usage goes here
        
        wait()  -- Adjust the delay as needed for your specific use case.
                -- This helps prevent excessive resource consumption.
        
    end 
end)

