local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
 
local interval = 0.1
RunService.Heartbeat:Connect(function()
    local currentTime = Lighting.ClockTime
    local change = currentTime + interval
    
    Lighting.ClockTime = change
end)
