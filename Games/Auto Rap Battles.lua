--[[
    __                _____                     
   / /   __  ______ _/ ___/____  ____ _________ 
  / /   / / / / __ `/\__ \/ __ \/ __ `/ ___/ _ \
 / /___/ /_/ / /_/ /___/ / /_/ / /_/ / /__/  __/
/_____/\__,_/\__,_//____/ .___/\__,_/\___/\___/ 
                       /_/                      v1 | © LuaSpace 2023        
--]]

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "LuaSpace | Auto Rap Battles",
	LoadingTitle = "LuaSpace hub is loading",
	LoadingSubtitle = "me cool you pool",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, 
		FileName = "LuaSpaceAutoRapBattles"
	},
        Discord = {
        	Enabled = false,
        	Invite = "loser", 
        	RememberJoins = true 
        },
	KeySystem = false, 
	KeySettings = {
		Title = "No Key System :)",
		Subtitle = "No Key System :)",
		Note = "No Key System :)",
		FileName = "No Key System :)",
		SaveKey = true,
		GrabKeyFromSite = false, 
		Key = "No Key System :)"
	}
})

Rayfield:Notify({
    Title = "LuaSpace | Auto Rap Battles",
    Content = "Loaded ",
    Duration = 6.5,
    Image = 4483362458,
    Actions = { 
        Ignore = {
            Name = "Start Rapping!",
            Callback = function()
                print("ZOMBIES")
            end
		},
	},
})



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
