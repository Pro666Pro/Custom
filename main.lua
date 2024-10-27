game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Credits",Text = "Script By Nexer1234 (lol)",Icon = "rbxassetid://7733658504",Duration = 5})

wait(2)

if game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 1223765330375569) then

mouse = game.Players.LocalPlayer:GetMouse()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage:WaitForChild("Events")
local BoxingEvent = Events:WaitForChild("Boxing")
local TeleportService = game:GetService("TeleportService")
local Http = game:GetService("HttpService")
local Player = Players.LocalPlayer

local Api = "https://games.roblox.com/v1/games/"
local _place, _id = game.PlaceId, game.JobId
local _servers = Api .. _place .. "/servers/Public?sortOrder=Desc&limit=100"

local bypass;
    bypass = hookmetamethod(game, "__namecall", function(method, ...) 
        if getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Ban then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.AdminGUI then
            return
        elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.WalkSpeedChanged then
            return
        end
        return bypass(method, ...)
    end)

local args = {
	[1] = "rbxassetid://9133844756",
	[2] = game:GetService("Players").LocalPlayer.Character.Torso
}
game:GetService("ReplicatedStorage"):WaitForChild("PlaySoundRemote"):InvokeServer(unpack(args))

fireclickdetector(workspace.Lobby["Boxer"].ClickDetector)

function TP()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

wait(0.3)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = true

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.18982631, 0, 0.0528455302, 0)
Frame.Size = UDim2.new(0, 0, 0, 0)
Frame.Active = true
Frame.Draggable = false

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(51, 51, 51, 51)
TextButton_3.Size = UDim2.new(0, 50, 0, 50)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "E"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true
TextButton_3.Draggable = true
TextButton_3.MouseButton1Click:Connect(function()
for _, player in pairs(Players:GetPlayers()) do
            local args = {
                [1] = player,
                [2] = true
            }
            BoxingEvent:FireServer(unpack(args))
        end
        task.wait(0)
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Slap, game.Players.LocalPlayer.Character.Humanoid):Play()
end)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(1, 1, 1, 1)
TextButton.Size = UDim2.new(0, 50, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "T"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.Draggable = true
TextButton.MouseButton1Click:Connect(function()
TP()
end)

else

game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Error",Text = "Don't have boxer glove, please wait...",Icon = "rbxassetid://7733658504",Duration = 5})

wait(1)
	
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/autogetfanboxer/main/main.lua'))()

wait(1)
	
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/autogetfanboxer/main/main.lua'))()

wait(1)
	
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/autogetfanboxer/main/main.lua'))()

wait(1)
	
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/autogetfanboxer/main/main.lua'))()

wait(1)
	
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/autogetfanboxer/main/main.lua'))()

end
