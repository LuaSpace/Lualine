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
	Name = "LuaSpace | Zombie Attack",
	LoadingTitle = "LuaSpace hub is loading",
	LoadingSubtitle = "KILL DA ZOMBIEZ",
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
    Title = "LuaSpace | Zombie Attack",
    Content = "Loaded",
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

local AutoFarm = Tab:CreateToggle({
	Name = "Autofarm",
	CurrentValue = false,
	Flag = "ToggleAF", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(AFVal)
		local groundDistance = 8
        local Player = game:GetService("Players").LocalPlayer
        local function getNearest()
            local nearest, dist = nil, 99999
            for _,v in pairs(game.Workspace.BossFolder:GetChildren()) do
                if(v:FindFirstChild("Head")~=nil)then
                    if(v:FindFirstChild("Head")~=nil)then
                        local m =(Player.Character.Head.Position-v.Head.Position).magnitude
                        if(m<dist)then
                            dist = m
                            nearest = v
                        end
                    end
                end
                for _,v in pairs(game.Workspace.enemies:GetChildren()) do
                    if(v:FindFirstChild("Head")~=nil)then
                        local m =(Player.Character.Head.Position-v.Head.Position).magnitude
                        if(m<dist)then
                            dist = m
                            nearest = v
                        end
                    end
                end
                return getNearest
            end
            _G.farm2 = true
            if AFVal == false then
                _G.farm2 = false
            elseif AFVal == true then
                _G.farm2 = true
            end
            
            _G.globalTarget = nil
            game:GetService("RunService").RenderStepped:Connect(function()
            if(_G.farm2==true) then
                local target = getNearestTarget()
                if(target~=nil)then
                    game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, target.Head.Position)
                    Player.Character.HumanoidRootPart.CFrame = (target.HumanoidRootPart.CFrame * CFrame.new(0, groundDistance, 9))
                    _G.globalTarget = target
                end
            end
            end)
            while wait() do
                if(_G.farm2==true and _G.globalTarget~=nil and _G.globalTarget:FindFirstChild("Head") and Player.Character:FindFirstChildOfClass("Tool"))then
                    local target = _G.globalTarget
                    game.ReplicatedStorage.Gun:FireServer({["Normal"] = Vector3.new(0, 0, 0), ["Direction"] = target.Head.Position, ["Name"] = Player.Character:FindFirstChildOfClass("Tool").Name, ["Hit"] = target.Head, ["Origin"] = target.Head.Position, ["Pos"] = target.Head.Position,})
                    wait()
                end
            end

    		-- The variable (Value) is a boolean on whether the toggle is true or false
	end,
})

--https://github.com/LuaSpace/luaspace

