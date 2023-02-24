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
	Name = "LuaSpace | Universal",
	LoadingTitle = "LuaSpace is loading",
	LoadingSubtitle = "Genuinely, these scripts are not safe for popular games",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "LuaSpaceUniversal"
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
    Title = "LuaSpace | Universal Script",
    Content = "Loaded",
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

local LP = Window:CreateTab("LocalPlayer", 4483362458) 

local usainbolt = LP:CreateSlider({
	Name = "WalkSpeed",
	Range = {0, 500},
	Increment = 10,
	Suffix = "Walkspeed",
	CurrentValue = 16,
	Flag = "WalkSpeedSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Speed)

		local Speed = Speed 
		local Player = game:GetService("Players").LocalPlayer.Character

		Player.Humanoid.WalkSpeed = Speed
    		-- The variable (Value) is a number which correlates to the value the slider is currently at
	end,
})

local jump = LP:CreateSlider({
	Name = "JumpPower",
	Range = {0, 500},
	Increment = 10,
	Suffix = "JumpPower",
	CurrentValue = 16,
	Flag = "JumpPowerSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(JumpPower)

		local JumpPower = JumpPower 
		local Player = game:GetService("Players").LocalPlayer.Character

		Player.Humanoid.JumpPower = JumpPower
    		-- The variable (Value) is a number which correlates to the value the slider is currently at
	end,
})

local RejoinLOL = LP:CreateButton({
	Name = "Rejoin",
	Callback = function()
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
	end,
})

local World = Window:CreateTab("World", 4483362458) 

local Performance = World:CreateButton({
	Name = "Anti-Lag",
	Callback = function()
		settings().Rendering.QualityLevel = 1;

		local RunService = game:FindService("RunService")
		local Terrain = game:FindService("Workspace"):FindFirstChildOfClass("Terrain");
		local Lighting = game:FindService("Lighting");
		
		Terrain.WaterWaveSize = 0;
		Terrain.WaterWaveSpeed = 0;
		Terrain.WaterReflectance = 0;
		Terrain.WaterTransparency = 0;
		Lighting.GlobalShadows = false;
		Lighting.FogEnd = 9e9;
		
		for _, v in next, game:GetDescendants() do
			if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
				v.Material = "Plastic";
				v.Reflectance = 0;
			elseif v:IsA("Decal") then
				v.Transparency = 1;
			elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
				v.Lifetime = NumberRange.new(0);
			elseif v:IsA("Explosion") then
				v.BlastPressure = 1;
				v.BlastRadius = 1;
			end
		end
		
		for _, v in pairs(Lighting:GetDescendants()) do
			if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
				v.Enabled = false;
			end
		end
		
		game:FindService("Workspace").DescendantAdded:Connect(function(child)
			spawn(function()
				if child:IsA("ForceField") then
					RunService.Heartbeat:wait();
					child:Destroy();
				elseif child:IsA("Sparkles") then
					RunService.Heartbeat:wait();
					child:Destroy();
				elseif child:IsA("Smoke") or child:IsA("Fire") then
					RunService.Heartbeat:wait()
					child:Destroy();
				end
			end)
		end)
	end,
})


local Disco = World:CreateButton({
	Name = "Disco",
	Callback = function()
		while true do 
			wait(.5)
			game.Lighting.Ambient = Color3.new(math.random(), math.random(), math.random())
		end
	end,
})


local Scripts = Window:CreateTab("Scripts", 4483362458) 

local IY = Scripts:CreateButton({
	Name = "Infinite Yield",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end,
})

--https://github.com/LuaSpace/luaspace
