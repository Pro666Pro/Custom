game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Credits",Text = "Script By Nexer1234",Icon = "rbxassetid://7733658504",Duration = 5})

wait(2)

if game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 1223765330375569) then

local character = script.Parent --Gets character
local humanoid = character:WaitForChild("Humanoid") --Gets humanoid
 
-- Remeber to select the animtion object and set the id to your own!
local walkAnim = script:WaitForChild("Walk") --Gets the walk animation for later use.
local walkAnimTrack = humanoid.Animator:LoadAnimation("rbxassetid://16163350920") --Gets the variable for the animation using the animation instance's ID and the humanoid
local idleAnim = script:WaitForChild("Idle") --Gets the walk animation for later use.
local idleAnimTrack = humanoid.Animator:LoadAnimation("rbxassetid://16163355836") --Gets the variable for the animation using the animation instance's ID and the humanoid
 
humanoid.Running:Connect(function(speed) --Creates a function once the character runs.
	if speed > 0 then --Plays the animation if the players speed is over 0.
		if not walkAnimTrack.IsPlaying then --Plays the track if it isn't playing already.
      idleAnimTrack:Stop()
			walkAnimTrack:Play()
		end
	else --Stops the walk track if the player's speed is 0.
		if walkAnimTrack.IsPlaying then
			walkAnimTrack:Stop()
      idleAnimTrack:Play()
		end
	end
end)

local UIS = game:GetService("UserInputService")

local Mouse = Player:GetMouse()

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

function GetCharacter()
   return game.Players.LocalPlayer.Character
end

function Teleport(pos)
   local Char = GetCharacter()
   if Char then
       Char:MoveTo(pos)
   end
end

   if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
       Teleport(Mouse.Hit.p)
   end
end)
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

function SlapstickAura()
if _G.SlapstickAura = false then
return
elseif _G.SlapstickAura = true then
game:GetService("ReplicatedStorage").slapstick:FireServer("fullcharged")
task.wait()
end
end

_G.SlapstickAura = false

coroutine.wrap(SlapstickAura)() 

local args = {
	[1] = "rbxassetid://ID HERE",
	[2] = game:GetService("Players").LocalPlayer.Character.Torso
}
game:GetService("ReplicatedStorage"):WaitForChild("PlaySoundRemote"):InvokeServer(unpack(args))

fireclickdetector(workspace.Lobby["Boxer"].ClickDetector)

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
TextButton_3.Position = UDim2.new(51, 51, 51, 1)
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
UIS.InputBegan:Connect(function(input)
end)

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(51, 51, 51, 1)
TextButton_2.Size = UDim2.new(0, 50, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "SlapStick Aura"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true
TextButton_2.Draggable = true
TextButton_2.MouseButton1Click:Connect(function()
if _G.SlapstickAura = false then
_G.SlapstickAura = true
elseif _G.SlapstickAura = true then
_G.SlapstickAura = false
end
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
