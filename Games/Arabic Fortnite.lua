--[[
    __                _____                     
   / /   __  ______ _/ ___/____  ____ _________ 
  / /   / / / / __ `/\__ \/ __ \/ __ `/ ___/ _ \
 / /___/ /_/ / /_/ /___/ / /_/ / /_/ / /__/  __/
/_____/\____/\__,_//____/ .___/\__,_/\___/\___/ 
                       /_/                      v2 | © LuaSpace 2023        
--]]

local weaponSystem = require(game:service'ReplicatedStorage'.WeaponsSystem.Libraries.BaseWeapon)
local client = game:GetService('Players').LocalPlayer;

local oldFire = weaponSystem.fire;
local oldGetConfigValue = weaponSystem.getConfigValue
local oldUseAmmo = weaponSystem.useAmmo;
local oldGetAmmo = weaponSystem.getAmmoInWeapon

function weaponSystem.getAmmoInWeapon(self, ...)
    local arguments = {...}
    if _G.infiniteAmmo then return 9e9 end
    return oldGetAmmo(self, unpack(arguments))
end

function weaponSystem.fire(self, ...)
    local arguments = {...};

    if _G.silentAim then
        local t = getClosestPlayer()
        if t then
            arguments[2] = (t.Position - arguments[1]).unit;
            arguments[3] = 1;
        end
    end

    return oldFire(self, unpack(arguments))
end

function weaponSystem.getConfigValue(self, ...)
    local arguments = {...}

    if _G.fastFire and arguments[1] == 'ShotCooldown' then
        return 0.01
    elseif _G.autoGuns and arguments[1] == 'FireMode' then
        return 'Automatic'
    elseif _G.noRecoil and (arguments[1] == 'RecoilMin' or arguments[1] == 'RecoilMax') then
        return 0
    elseif _G.noSpread and (arguments[1] == 'MinSpread' or arguments[1] == 'MaxSpread') then
        return 0
    end

    return oldGetConfigValue(self, unpack(arguments))
end

function weaponSystem.useAmmo(self, ...)
    local arguments = {...}
    if _G.infiniteAmmo then
        if (self.ammoInWeaponValue) then
            return 1;
        end
    end
    return oldUseAmmo(self, unpack(arguments))
end

if _G.IniNDS then
    _G.OrionLib:MakeNotification({
        Name = "Error - Already executed.",
        Content = "Tap RightShift to enable interface or rejoin the game if you have any issues.",
        Image = "rbxassetid://6962520787",
        Time = 12.5
    })
    return
end

_G.OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
local OrionLib = _G.OrionLib

local Window = OrionLib:MakeWindow({Name = "LuaSpace | Arabic Fortnite ⛏️", HidePremium = false, SaveConfig = true, ConfigFolder = "LuaSpaceArabicFortnite", IntroEnabled = false, IntroText = "Welcome to LuaSpace"})

local Main = Window:MakeTab({
    Name = "Combat",
    Icon = "rbxassetid://4483345998"
})

local WeaponMods = Main:AddSection({
	Name = "Weapon Mods"
})

Main:AddToggle({
	Name = "No Recoil",
	Default = false,
	Callback = function(NRVal)
		_G.noRecoil = NRVal
	end    
})

Main:AddToggle({
	Name = "Infinite Ammo",
	Default = false,
	Callback = function(IAVal)
		_G.infiniteAmmo = IAVal
	end    
})

Main:AddToggle({
	Name = "Fast Fire",
	Default = false,
	Callback = function(FFVal)
		_G.fastFire = FFVal
	end    
})

Main:AddToggle({
	Name = "Automatic Guns",
	Default = false,
	Callback = function(AGVal)
		_G.autoGuns = AGVal
	end    
})

Main:AddToggle({
	Name = "No Spread",
	Default = false,
	Callback = function(NSVal)
		_G.noSpread = NSVal
	end    
})

local LP = Window:MakeTab({
    Name = "LocalPlayer",
    Icon = "rbxassetid://6723742952"
})

LP:AddSlider({
	Name = "Speed",
	Min = 0,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Walk Power",
	Callback = function(Speed)

		local Speed = Speed 
		local Player = game:GetService("Players").LocalPlayer.Character
		Player.Humanoid.WalkSpeed = Speed
	end    
})

LP:AddButton({
	Name = "Rejoin"
	Callback = function()
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
	end,
})

local Visuals = Window:MakeTab({
    Name = "Visuals",
    Icon = "rbxassetid://11129781601"
})

Visuals:AddButton({
	Name = "Performance Booster",
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
        pcall(setfpscap, 144)
        pcall(set_fps_cap, 144)
  	end    
})

Visuals:AddButton({
	Name = "Disco",
	Callback = function()
        while true do 
			wait(.2)
			game.Lighting.Ambient = Color3.new(math.random(), math.random(), math.random())
		end
  	end    
})

local Credits = Window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://6962520787"
})

Credits:AddSection({ Name = "Credits:" })

Credits:AddParagraph("CloakSelf"," GitHub: https://github.com/CloakSelf | Discord: SpiderDaNoob#6355")

Credits:AddParagraph( "GitHub Contributors", "Github Link: https://github.com/LuaSpace/luaspace" )

OrionLib:Init()




