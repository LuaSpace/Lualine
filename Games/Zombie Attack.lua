--[[
    __ __     __                          
   / //_/__  / /___      ______ _________ 
  / ,< / _ \/ //_/ | /| / / __ `/ ___/ _ \
 / /| /  __/ ,<  | |/ |/ / /_/ / /  /  __/
/_/ |_\___/_/|_| |__/|__/\__,_/_/   \___/ 
                                          v1 | © LuaSpace 2023

Information Here:
                                    
---]]

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "LuaSpace | Zombie Attack",
	LoadingTitle = "LuaSpace hub is loading",
	LoadingSubtitle = "rofl",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "LuaSpaceZombieAttack"
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
    Content = "Welcome to LuaSpace Hub!",
    Duration = 6.5,
    Image = 4483362458,
    Actions = { -- Notification Buttons
        Ignore = {
            Name = "Start Hacking!",
            Callback = function()
                print("ZOMBIES")
            end
		},
	},
})


local Tab = Window:CreateTab("Main", 4483362458) 
