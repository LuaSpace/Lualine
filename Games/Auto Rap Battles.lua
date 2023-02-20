--[[
    __                _____                     
   / /   __  ______ _/ ___/____  ____ _________ 
  / /   / / / / __ `/\__ \/ __ \/ __ `/ ___/ _ \
 / /___/ /_/ / /_/ /___/ / /_/ / /_/ / /__/  __/
/_____/\__,_/\__,_//____/ .___/\__,_/\___/\___/ 
                       /_/                      v1 | © LuaSpace 2023        

---]]

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Auto Rap Battles",
	LoadingTitle = "me pro you noob",
	LoadingSubtitle = "- Me",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "LuaSpaceAutoRapBattles"
	},
        Discord = {
        	Enabled = false,
        	Invite = "loser", -- The Discord invite code, do not include discord.gg/
        	RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
	KeySystem = false, -- Set this to true to use our key system
	KeySettings = {
		Title = "No Key System :)",
		Subtitle = "No Key System :)",
		Note = "No Key System :)",
		FileName = "No Key System :)",
		SaveKey = true,
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = "No Key System :)"
	}
})

Rayfield:Notify({
    Title = "Loaded!",
    Content = "LuaSpace | Auto Rap Battles ",
    Duration = 6.5,
    Image = 4483362458,
    Actions = { -- Notification Buttons
        Ignore = {
            Name = "Okay!",
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

local HAHAGETREKTNOOB = Tab:CreateSection("Admin Script")

local IY = UwuDaddy:CreateButton({
	Name = "Infinite Yield",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end,
})

local UWUSRE = Tab:CreateSection("Misc Scripts")


local Flinger = UwuDaddy:CreateButton({
	Name = "Fling People",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
	end,
})
