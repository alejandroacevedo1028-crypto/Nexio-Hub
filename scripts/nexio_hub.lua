-- Script to create a GUI panel in Roblox

-- Services
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")

-- Variable Definitions
local player = Players.LocalPlayer

-- GUI Initialization
ScreenGui.Name = "NexioHubGui"
ScreenGui.Parent = StarterGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.Size = UDim2.new(0.4, 0, 0.4, 0)
Frame.Position = UDim2.new(0.3, 0, 0.3, 0)

-- Additional GUI Elements
local TextLabel = Instance.new("TextLabel")
TextLabel.Parent = Frame
TextLabel.Size = UDim2.new(1, 0, 0.2, 0)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Text = "Nexio Hub"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)

-- Functionality (Example)
function closeGui()
    ScreenGui:Destroy()
end

-- Create a close button
local CloseButton = Instance.new("TextButton")
CloseButton.Parent = Frame
CloseButton.Size = UDim2.new(0.25, 0, 0.1, 0)
CloseButton.Position = UDim2.new(0.375, 0, 0.85, 0)
CloseButton.Text = "Close"
CloseButton.MouseButton1Click:Connect(closeGui)
