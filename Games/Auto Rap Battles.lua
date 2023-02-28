--[[
    __                _____                     
   / /   __  ______ _/ ___/____  ____ _________ 
  / /   / / / / __ `/\__ \/ __ \/ __ `/ ___/ _ \
 / /___/ /_/ / /_/ /___/ / /_/ / /_/ / /__/  __/
/_____/\__,_/\__,_//____/ .___/\__,_/\___/\___/ 
                       /_/                      v2 | © LuaSpace 2023        
--]]

_G.OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
local OrionLib = _G.OrionLib

local Window = OrionLib:MakeWindow({Name = "LuaSpace | Auto Rap Battles 🎤", HidePremium = false, SaveConfig = true, ConfigFolder = "LuaSpaceAutoRapBattles", IntroEnabled = false, IntroText = "Welcome to LuaSpace"})

local Main = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://11129688807"
})
local AutoRap = Window:MakeTab({
    Name = "Auto Raps",
    Icon = "rbxassetid://7203392850"
})
local Misc = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483345998"
})
local Teleports = Window:MakeTab({
    Name = "Teleports",
    Icon = "rbxassetid://6723742952"
})
local Credits = Window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://6962520787"
})

-- Main tab

Main:AddButton({
	Name = "Vote Player 1!",
	Callback = function()
		for i = 0,1 do
            game.Workspace.Votes:FireServer(false,"p1")
            game:GetService("RunService").Heartbeat:Wait()
         end
	end,
})

Main:AddButton({
	Name = "Vote Player 2!",
	Callback = function()
		for i = 0,1 do
            game.Workspace.Votes:FireServer(false,"p2")
            game:GetService("RunService").Heartbeat:Wait()
         end
	end,
})

-- Autorap

AutoRap:AddParagraph("Coming Soon","Join our discord server for updates")

-- Misc

Misc:AddSlider({
	Name = "Speed",
	Min = 0,
	Max = 1000,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Walkspeed",
	Callback = function(Speed)
		local Speed = Speed 
		local Player = game:GetService("Players").LocalPlayer.Character
		Player.Humanoid.WalkSpeed = Speed
	end    
})

Misc:AddButton({
	Name = "Infinite Yield",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end,   
})


-- Teleports

Teleports:AddButton({
	Name = "Teleport to DJ Booth",
	Callback = function()
		for i = 0,1 do
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-90, 65, -214)
		end
    end
})

Teleports:AddButton({
	Name = "Teleport to Stage",
	Callback = function()
		for i = 0,1 do
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-77, 65, -214)

		end
		end
})

Teleports:AddButton({
	Name = "Teleport to Bathroom",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-60, 62, -278)

	end,
})

Teleports:AddButton({
	Name = "Teleport to Spectators Area",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-60, 62, -214)
	end,
})

-- Credits

Credits:AddSection({ Name = "Credits:" })

Credits:AddParagraph("CloakSelf"," GitHub: https://github.com/CloakSelf | Discord: SpiderDaNoob#6355")

Credits:AddParagraph( "GitHub Contributors", "Github Link: https://github.com/LuaSpace/luaspace" )

OrionLib:Init()

--[[

Rayfield Version 

local Tab = Window:CreateTab("Main", 4483362458) 
local Sexion = Tab:CreateSection("Voting")

local v1 = Tab:CreateButton({
	Name = "Vote Player 1",
	Callback = function()
		for i = 0,1 do
            game.Workspace.Votes:FireServer(false,"p1")
            game:GetService("RunService").Heartbeat:Wait()
         end
	end,
})

local v2 = Tab:CreateButton({
	Name = "Vote Player 2",
	Callback = function()
		for i = 0,1 do
            game.Workspace.Votes:FireServer(false,"p2")
            game:GetService("RunService").Heartbeat:Wait()
         end
	end,
})

local Ratio = Tab:CreateSection("Teleport")

local DJBooth = Tab:CreateButton({
	Name = "DJ Booth",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-90, 65, -214)
	end,
})

local BattleStage = Tab:CreateButton({
	Name = "Rap Stage",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-77, 65, -214)
	end,
})


local TakeAShit = Tab:CreateButton({
	Name = "Taco Bell",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-60, 62, -278)
	end,
})



local GoBack = Tab:CreateButton({
	Name = "Go Back To Humanity",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-60, 62, -214)
	end,
})


local UwuDaddy = Window:CreateTab("Misc", 4483362458) 

local IY = UwuDaddy:CreateButton({
	Name = "Infinite Yield",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end,
})

local Flinger = UwuDaddy:CreateButton({
	Name = "Fling People",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
	end,
})





--https://github.com/LuaSpace/luaspace

]]--

