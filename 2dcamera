local Players = game:GetService("Players")
local ContextActionService = game:GetService("ContextActionService")
local RunService = game:GetService("RunService")
 
local Player = Players.LocalPlayer
local Camera = workspace.CurrentCamera
 
local Character = Player.Character or Player.CharacterAdded:Wait()
local HumanoidRootPart = Character.HumanoidRootPart
 
ContextActionService:UnbindAction("moveForwardAction")
ContextActionService:UnbindAction("moveBackwardAction")
 
RunService.RenderStepped:Connect(function()
    Camera.CameraType = Enum.CameraType.Scriptable
    Camera.CFrame = Camera.CFrame:Lerp(CFrame.new(HumanoidRootPart.Position + Vector3.new(0, 5, 10), HumanoidRootPart.Position), 0.1)
end)
