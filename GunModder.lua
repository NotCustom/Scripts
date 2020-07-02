-- Important stuff
local plr = game.Players.LocalPlayer
local backpack = plr.Backpack
local uis = game:GetService("UserInputService")
local pistol = backpack:FindFirstChild("M9")
local shotgun = backpack:FindFirstChild("Remington 870")
local ak = backpack:FindFirstChild("AK-47")
local swatgun = backpack:FindFirstChild("M4A1")
local pistolselect = false
local shotgunselect = false
local akselect = false
local swatgunselect = false
local autofire = false
local isopen = false
local green = Color3.new(85, 255, 127)
local red = Color3.new(255,0,0)

-- Gui stuff

local ModeusGunModder = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Header = Instance.new("TextLabel")
local Credit = Instance.new("TextLabel")
local Pistol = Instance.new("TextButton")
local Shotgun = Instance.new("TextButton")
local SwatGun = Instance.new("TextButton")
local AK = Instance.new("TextButton")
local Set = Instance.new("TextButton")
local Save = Instance.new("TextButton")
local Auto = Instance.new("TextButton")
local RangeLabel = Instance.new("TextLabel")
local AmmoLabel = Instance.new("TextLabel")
local MAmmoLabel = Instance.new("TextLabel")
local BulletsLabel = Instance.new("TextLabel")
local RangeInput = Instance.new("TextBox")
local AmmoInput = Instance.new("TextBox")
local MAmmoInput = Instance.new("TextBox")
local BulletInput = Instance.new("TextBox")
uis.InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode.LeftControl then
        if isopen == true then
            Main:TweenPosition(UDim2.new(-0.313, 0, 0.313, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quart)
            isopen = false
        else
            Main:TweenPosition(UDim2.new(0, 0, 0.313, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quart)
            isopen = true
        end
    end
end)
function ping(Header,Msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = Header,
		Text = Msg,
		Duration = 3
	})
end
function init() -- why did we put functions under "Gui stuff" ?
	wait(1)
	Main:TweenPosition(UDim2.new(0, 0, 0.313, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quart)
	isopen = true
	ping("Modeus Gun Modder","Welcome! Save doesn't work yet...")
end
function setselect(btn) -- theres probably a better way to do this but oh well
	if btn == "M9" then
		Pistol.BackgroundColor3 = green
		Pistol.BorderColor3 = green
		Shotgun.BackgroundColor3 = red
		Shotgun.BorderColor3 = red
		AK.BackgroundColor3 = red
		AK.BorderColor3 = red
		SwatGun.BackgroundColor3 = red
		SwatGun.BorderColor3 = red
	end
	if btn == "R870" then
		Pistol.BackgroundColor3 = red
		Pistol.BorderColor3 = red
		Shotgun.BackgroundColor3 = green
		Shotgun.BorderColor3 = green
		AK.BackgroundColor3 = red
		AK.BorderColor3 = red
		SwatGun.BackgroundColor3 = red
		SwatGun.BorderColor3 = red
	end
	if btn == "M4A1" then
		Pistol.BackgroundColor3 = red
		Pistol.BorderColor3 = red
		Shotgun.BackgroundColor3 = red
		Shotgun.BorderColor3 = red
		AK.BackgroundColor3 = red
		AK.BorderColor3 = red
		SwatGun.BackgroundColor3 = green
		SwatGun.BorderColor3 = green
	end
	if btn == "AK" then
		pistolselect = false
		shotgunselect = false
		akselect = true
		swatgunselect = false
		Pistol.BackgroundColor3 = red
		Pistol.BorderColor3 = red
		Shotgun.BackgroundColor3 = red
		Shotgun.BorderColor3 = red
		AK.BackgroundColor3 = green
		AK.BorderColor3 = green
		SwatGun.BackgroundColor3 = red
		SwatGun.BorderColor3 = red
	end
end

--Properties:

ModeusGunModder.Name = "ModeusGunModder"
ModeusGunModder.Parent = game:WaitForChild("CoreGui")
ModeusGunModder.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ModeusGunModder
Main.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Main.BackgroundTransparency = 0.250
Main.BorderColor3 = Color3.fromRGB(34, 34, 34)
Main.Position = UDim2.new(-0.313, 0, 0.313, 0)
Main.Size = UDim2.new(0, 350, 0, 300)

Header.Name = "Header"
Header.Parent = Main
Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Header.BackgroundTransparency = 1.000
Header.Position = UDim2.new(0, 0, -0.0566666685, 0)
Header.Size = UDim2.new(0, 350, 0, 50)
Header.Font = Enum.Font.SourceSans
Header.Text = "Prison Life - Gun Modder"
Header.TextColor3 = Color3.fromRGB(255, 255, 255)
Header.TextSize = 25.000

Credit.Name = "Credit"
Credit.Parent = Main
Credit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credit.BackgroundTransparency = 1.000
Credit.Position = UDim2.new(0.214285716, 0, 0, 0)
Credit.Size = UDim2.new(0, 200, 0, 50)
Credit.Font = Enum.Font.SourceSans
Credit.Text = "By Modeus"
Credit.TextColor3 = Color3.fromRGB(255, 255, 255)
Credit.TextSize = 16.000

Pistol.Name = "Pistol"
Pistol.Parent = Main
Pistol.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Pistol.BackgroundTransparency = 0.500
Pistol.BorderColor3 = Color3.fromRGB(255, 0, 0)
Pistol.Position = UDim2.new(0, 0, 0.109999999, 0)
Pistol.Size = UDim2.new(0, 75, 0, 25)
Pistol.Font = Enum.Font.SourceSans
Pistol.Text = "M9"
Pistol.TextColor3 = Color3.fromRGB(255, 255, 255)
Pistol.TextSize = 20.000

Shotgun.Name = "Shotgun"
Shotgun.Parent = Main
Shotgun.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Shotgun.BackgroundTransparency = 0.500
Shotgun.BorderColor3 = Color3.fromRGB(255, 0, 0)
Shotgun.Position = UDim2.new(0.26000002, 0, 0.109999999, 0)
Shotgun.Size = UDim2.new(0, 75, 0, 25)
Shotgun.Font = Enum.Font.SourceSans
Shotgun.Text = "R-870"
Shotgun.TextColor3 = Color3.fromRGB(255, 255, 255)
Shotgun.TextSize = 20.000

SwatGun.Name = "SwatGun"
SwatGun.Parent = Main
SwatGun.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
SwatGun.BackgroundTransparency = 0.500
SwatGun.BorderColor3 = Color3.fromRGB(255, 0, 0)
SwatGun.Position = UDim2.new(0.785714269, 0, 0.109999999, 0)
SwatGun.Size = UDim2.new(0, 75, 0, 25)
SwatGun.Font = Enum.Font.SourceSans
SwatGun.Text = "M4A1"
SwatGun.TextColor3 = Color3.fromRGB(255, 255, 255)
SwatGun.TextSize = 20.000

AK.Name = "AK"
AK.Parent = Main
AK.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
AK.BackgroundTransparency = 0.500
AK.BorderColor3 = Color3.fromRGB(255, 0, 0)
AK.Position = UDim2.new(0.525714278, 0, 0.109999999, 0)
AK.Size = UDim2.new(0, 75, 0, 25)
AK.Font = Enum.Font.SourceSans
AK.Text = "AK-47"
AK.TextColor3 = Color3.fromRGB(255, 255, 255)
AK.TextSize = 20.000

Set.Name = "Set"
Set.Parent = Main
Set.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
Set.BackgroundTransparency = 0.500
Set.BorderColor3 = Color3.fromRGB(85, 255, 127)
Set.Position = UDim2.new(0, 0, 0.88166666, 0)
Set.Size = UDim2.new(0, 150, 0, 35)
Set.Font = Enum.Font.SourceSans
Set.Text = "Mod"
Set.TextColor3 = Color3.fromRGB(255, 255, 255)
Set.TextSize = 20.000

Save.Name = "Save"
Save.Parent = Main
Save.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
Save.BackgroundTransparency = 0.500
Save.BorderColor3 = Color3.fromRGB(85, 255, 127)
Save.Position = UDim2.new(0.571428597, 0, 0.88166666, 0)
Save.Size = UDim2.new(0, 150, 0, 35)
Save.Font = Enum.Font.SourceSans
Save.Text = "Save Settings"
Save.TextColor3 = Color3.fromRGB(255, 255, 255)
Save.TextSize = 20.000

Auto.Name = "Auto"
Auto.Parent = Main
Auto.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Auto.BackgroundTransparency = 0.500
Auto.BorderColor3 = Color3.fromRGB(255, 0, 0)
Auto.Position = UDim2.new(0, 0, 0.216666669, 0)
Auto.Size = UDim2.new(0, 125, 0, 25)
Auto.Font = Enum.Font.SourceSans
Auto.Text = "AutoFire : Disabled"
Auto.TextColor3 = Color3.fromRGB(255, 255, 255)
Auto.TextSize = 16.000

RangeLabel.Name = "RangeLabel"
RangeLabel.Parent = Main
RangeLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RangeLabel.BackgroundTransparency = 1.000
RangeLabel.Position = UDim2.new(0, 0, 0.300000012, 0)
RangeLabel.Size = UDim2.new(0, 50, 0, 25)
RangeLabel.Font = Enum.Font.SourceSans
RangeLabel.Text = "Range: "
RangeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
RangeLabel.TextSize = 20.000
RangeLabel.TextWrapped = true

AmmoLabel.Name = "AmmoLabel"
AmmoLabel.Parent = Main
AmmoLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AmmoLabel.BackgroundTransparency = 1.000
AmmoLabel.Position = UDim2.new(0, 0, 0.383333355, 0)
AmmoLabel.Size = UDim2.new(0, 50, 0, 25)
AmmoLabel.Font = Enum.Font.SourceSans
AmmoLabel.Text = "Ammo:"
AmmoLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
AmmoLabel.TextSize = 20.000
AmmoLabel.TextWrapped = true

MAmmoLabel.Name = "MAmmoLabel"
MAmmoLabel.Parent = Main
MAmmoLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MAmmoLabel.BackgroundTransparency = 1.000
MAmmoLabel.Position = UDim2.new(0, 0, 0.463333428, 0)
MAmmoLabel.Size = UDim2.new(0, 85, 0, 25)
MAmmoLabel.Font = Enum.Font.SourceSans
MAmmoLabel.Text = "Max ammo:"
MAmmoLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
MAmmoLabel.TextSize = 20.000

BulletsLabel.Name = "BulletsLabel"
BulletsLabel.Parent = Main
BulletsLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BulletsLabel.BackgroundTransparency = 1.000
BulletsLabel.Position = UDim2.new(0.00285714865, 0, 0.546666682, 0)
BulletsLabel.Size = UDim2.new(0, 149, 0, 25)
BulletsLabel.Font = Enum.Font.SourceSans
BulletsLabel.Text = "Bullets(fired at once):"
BulletsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
BulletsLabel.TextSize = 20.000

RangeInput.Name = "RangeInput"
RangeInput.Parent = Main
RangeInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RangeInput.BackgroundTransparency = 0.500
RangeInput.BorderColor3 = Color3.fromRGB(255, 255, 255)
RangeInput.Position = UDim2.new(0.856999993, 0, 0.270000011, 0)
RangeInput.Size = UDim2.new(0, 50, 0, 25)
RangeInput.Font = Enum.Font.SourceSans
RangeInput.Text = ""
RangeInput.TextColor3 = Color3.fromRGB(0, 0, 0)
RangeInput.TextSize = 14.000

AmmoInput.Name = "AmmoInput"
AmmoInput.Parent = Main
AmmoInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AmmoInput.BackgroundTransparency = 0.500
AmmoInput.BorderColor3 = Color3.fromRGB(255, 255, 255)
AmmoInput.Position = UDim2.new(0.856999993, 0, 0.370000005, 0)
AmmoInput.Size = UDim2.new(0, 50, 0, 25)
AmmoInput.Font = Enum.Font.SourceSans
AmmoInput.Text = ""
AmmoInput.TextColor3 = Color3.fromRGB(0, 0, 0)
AmmoInput.TextSize = 14.000

MAmmoInput.Name = "MAmmoInput"
MAmmoInput.Parent = Main
MAmmoInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MAmmoInput.BackgroundTransparency = 0.500
MAmmoInput.BorderColor3 = Color3.fromRGB(255, 255, 255)
MAmmoInput.Position = UDim2.new(0.856999993, 0, 0.469999999, 0)
MAmmoInput.Size = UDim2.new(0, 50, 0, 25)
MAmmoInput.Font = Enum.Font.SourceSans
MAmmoInput.Text = ""
MAmmoInput.TextColor3 = Color3.fromRGB(0, 0, 0)
MAmmoInput.TextSize = 14.000

BulletInput.Name = "BulletInput"
BulletInput.Parent = Main
BulletInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BulletInput.BackgroundTransparency = 0.500
BulletInput.BorderColor3 = Color3.fromRGB(255, 255, 255)
BulletInput.Position = UDim2.new(0.856999993, 0, 0.569999993, 0)
BulletInput.Size = UDim2.new(0, 50, 0, 25)
BulletInput.Font = Enum.Font.SourceSans
BulletInput.Text = ""
BulletInput.TextColor3 = Color3.fromRGB(0, 0, 0)
BulletInput.TextSize = 14.000

-- woah actual functions finally

Auto.MouseButton1Down:connect(function()
	if autofire == false then
		Auto.BackgroundColor3 = green
		Auto.BorderColor3 = green
		autofire = true
	elseif autofire == true then
		Auto.BackgroundColor3 = red
		Auto.BorderColor3 = red
		autofire = false
	end
end)
Pistol.MouseButton1Down:connect(function()
	setselect("M9")
	pistolselect = true
		shotgunselect = false
		akselect = false
		swatgunselect = false
end)
AK.MouseButton1Down:connect(function()
	setselect("AK")
	pistolselect = false
		shotgunselect = false
		akselect = true
		swatgunselect = false
		
end)
SwatGun.MouseButton1Down:connect(function()
	setselect("M4A1")
	pistolselect = false
		shotgunselect = false
		akselect = false
		swatgunselect = true
		
end)
Shotgun.MouseButton1Down:connect(function()
	setselect("R870")
	pistolselect = false
		shotgunselect = true
		akselect = false
		swatgunselect = false
		
end)
Set.MouseButton1Down:connect(function()
	if pistolselect == true then
	    local gun = require(game:GetService("Players").LocalPlayer.Backpack.M9.GunStates)
        gun.MaxAmmo = tonumber(MAmmoInput.Text)
        gun.CurrentAmmo = tonumber(AmmoInput.Text)
        gun.Range = tonumber(RangeInput.Text)
        if autofire == true then
            gun.AutoFire = true
            Auto.Text = "AutoFire: Enabled"
        else
            gun.AutoFire = false
            Auto.Text = "AutoFire: Disabled"
        end
        gun.Bullets = tonumber(BulletInput.Text)
        ping("Modeus Gun Modder","Successfully modded!")
	end
    if shotgunselect == true then
	    local gun = require(game:GetService("Players").LocalPlayer.Backpack["Remington 870"].GunStates)
        gun.MaxAmmo = tonumber(MAmmoInput.Text)
        gun.CurrentAmmo = tonumber(AmmoInput.Text)
        gun.Range = tonumber(RangeInput.Text)
        if autofire == true then
            gun.AutoFire = true
            Auto.Text = "AutoFire: Enabled"
        else
            gun.AutoFire = false
            Auto.Text = "AutoFire: Disabled"
        end
        gun.Bullets = tonumber(BulletInput.Text)
        ping("Modeus Gun Modder","Successfully modded!")
    end
    if swatgunselect == true then
       local gun = require(game:GetService("Players").LocalPlayer.Backpack["M4A1"].GunStates)
        gun.MaxAmmo = tonumber(MAmmoInput.Text)
        gun.CurrentAmmo = tonumber(AmmoInput.Text)
        gun.Range = tonumber(RangeInput.Text)
        if autofire == true then
            gun.AutoFire = true
            Auto.Text = "AutoFire: Enabled"
        else
            gun.AutoFire = false
            Auto.Text = "AutoFire: Disabled"
        end
        gun.Bullets = tonumber(BulletInput.Text)
        ping("Modeus Gun Modder","Successfully modded!") 
    end
    if akselect == true then
       local gun = require(game:GetService("Players").LocalPlayer.Backpack["AK-47"].GunStates)
        gun.MaxAmmo = tonumber(MAmmoInput.Text)
        gun.CurrentAmmo = tonumber(AmmoInput.Text)
        gun.Range = tonumber(RangeInput.Text)
        if autofire == true then
            gun.AutoFire = true
            Auto.Text = "AutoFire: Enabled"
        else
            gun.AutoFire = false
            Auto.Text = "AutoFire: Disabled"
        end
        gun.Bullets = tonumber(BulletInput.Text)
        ping("Modeus Gun Modder","Successfully modded!") 
    end
    if pistolselect == false and shotgunselect == false and swatgunselect == false and akselect == false then
        ping("Modeus Gun Modder","Please select a gun!")
    end
end)

init()