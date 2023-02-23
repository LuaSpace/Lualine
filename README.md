Experimental Branch


<details><summary><h3>Boilerplate</h3></summary>

```lua
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
	Name = "LuaSpace | Game Name",
	LoadingTitle = "LuaSpace hub is loading",
	LoadingSubtitle = "rawr uwu",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, 
		FileName = "LuaSpaceFOOGAME"
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
    Title = "LuaSpace | Game Name",
    Content = "Loaded ",
    Duration = 6.5,
    Image = 4483362458,
    Actions = { 
        Ignore = {
            Name = "Start!",
            Callback = function()
                print("Amongus")
            end
		},
	},
})

```


</details>
