local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
 
local Player = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local Info = TweenInfo.new(0.2)
 
local Character = Player.Character or Player.CharacterAdded:Wait()
 
UserInputService.InputBegan:Connect(function(input, gm)
    if not gm then
        if input.KeyCode == Enum.KeyCode.LeftShift then
            TweenService:Create(Camera, Info, { FieldOfView = 90 }):Play()
            Character.Humanoid.WalkSpeed = 30
        end
    end
end)
 
UserInputService.InputEnded:Connect(function(input, gm)
    if not gm then
        if input.KeyCode == Enum.KeyCode.LeftShift then
            TweenService:Create(Camera, Info, { FieldOfView = 70 }):Play()
            Character.Humanoid.WalkSpeed = 16
        end
    end
end)
