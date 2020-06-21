-- use the loadstring instead of this script so it updates
plr = game.Players.LocalPlayer
Char = plr.Character
uis = game:GetService("UserInputService")
yesasda = false
PlayerTribe = "None"
PlayerTribeNum = 0
misc = workspace.Misc
-- gui stuff

local small = Instance.new("ScreenGui")
local MainPage = Instance.new("Frame")
local createdby = Instance.new("TextButton")
local minimize = Instance.new("TextButton")
local fullclose = Instance.new("TextButton")
local challenges = Instance.new("TextButton")
local misc = Instance.new("TextButton")
local maincmds = Instance.new("TextButton")
local secret = Instance.new("TextButton")
local randomfunny = Instance.new("TextLabel")
local HmmPage = Instance.new("Frame")
local hmmMinimize = Instance.new("TextButton")
local hmmEnter = Instance.new("TextBox")
local hmmCheck = Instance.new("TextButton")
local hmmhmm = Instance.new("TextLabel")
local hmmback = Instance.new("TextButton")
local RealMainPage = Instance.new("Frame")
local actualMinimize = Instance.new("TextButton")
local actualback = Instance.new("TextButton")
local getidol = Instance.new("TextButton")
local ceasegetidols = Instance.new("TextButton")
local coins = Instance.new("TextButton")
local zoom = Instance.new("TextButton")
local name = Instance.new("TextBox")
local tp = Instance.new("TextButton")
local ChallengesPage = Instance.new("Frame")
local chlminimize = Instance.new("TextButton")
local chlback = Instance.new("TextButton")
local init = Instance.new("TextButton")
local initnote = Instance.new("TextLabel")
local solo = Instance.new("TextLabel")
local getagrip = Instance.new("TextButton")
local bywaybustle = Instance.new("TextButton")
local topofthemount = Instance.new("TextButton")
local crypticcombo = Instance.new("TextButton")
local tribal = Instance.new("TextLabel")
local tidepool = Instance.new("TextButton")
local beattothepunch = Instance.new("TextButton")
local divedwelling = Instance.new("TextButton")
local Extra = Instance.new("Frame")
local header = Instance.new("TextLabel")
local Shalltear = Instance.new("TextLabel")
local Custom = Instance.new("TextLabel")
local thefunny = Instance.new("TextLabel")
local aand = Instance.new("TextLabel")
local extraminimize = Instance.new("TextButton")
local extraback = Instance.new("TextButton")
local Hidden = Instance.new("Frame")
local wacky = Instance.new("TextLabel")
local label = Instance.new("TextLabel")
local music = Instance.new("TextButton")
local hiddenback = Instance.new("TextButton")
local hiddenminimize = Instance.new("TextButton")
local settingsfile = isfile("SCSettings.txt") -- new settings file, "original" was actually in an unreleased private update
function start()
	MainPage:TweenPosition(UDim2.new(0, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint, 1)
	if not settingsfile then
		writefile("SCSettings.txt", "Settings coming soon!\n\n		~~Custom") -- more like, whenever I can get the page made
	end
end
-- properties

small.Name = "sharply dressed demon girls" -- :sunglasses:
small.Parent = game:WaitForChild("CoreGui") 
small.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainPage.Name = "MainPage"
MainPage.Parent = small
MainPage.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
MainPage.BackgroundTransparency = 0.600
MainPage.Position = UDim2.new(-0.303, 0, 0.286, 0)
MainPage.Size = UDim2.new(0, 375, 0, 365)

createdby.Name = "createdby"
createdby.Parent = MainPage
createdby.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
createdby.BackgroundTransparency = 1.000
createdby.BorderColor3 = Color3.fromRGB(255, 255, 255)
createdby.Position = UDim2.new(0.231999993, 0, 0, 0)
createdby.Size = UDim2.new(0, 200, 0, 26)
createdby.Font = Enum.Font.SourceSans
createdby.Text = "By Shalltear#8787"
createdby.TextColor3 = Color3.fromRGB(85, 0, 0)
createdby.TextSize = 25.000

minimize.Name = "minimize"
minimize.Parent = MainPage
minimize.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
minimize.BackgroundTransparency = 0.500
minimize.BorderColor3 = Color3.fromRGB(170, 0, 0)
minimize.Position = UDim2.new(0.930666685, 0, 0, 0)
minimize.Size = UDim2.new(0, 26, 0, 26)
minimize.Font = Enum.Font.SourceSans
minimize.Text = ""
minimize.TextColor3 = Color3.fromRGB(0, 0, 0)
minimize.TextSize = 14.000

fullclose.Name = "fullclose"
fullclose.Parent = MainPage
fullclose.BackgroundColor3 = Color3.fromRGB(125, 0, 0)
fullclose.BackgroundTransparency = 0.500
fullclose.BorderColor3 = Color3.fromRGB(125, 0, 0)
fullclose.Position = UDim2.new(0.11733333, 0, 0.904109597, 0)
fullclose.Size = UDim2.new(0, 286, 0, 35)
fullclose.Font = Enum.Font.SourceSans
fullclose.Text = "Full Close(destroys the gui)"
fullclose.TextColor3 = Color3.fromRGB(0, 0, 0)
fullclose.TextSize = 25.000

challenges.Name = "challenges"
challenges.Parent = MainPage
challenges.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
challenges.BackgroundTransparency = 0.500
challenges.BorderColor3 = Color3.fromRGB(100, 200, 100)
challenges.Position = UDim2.new(0, 0, 0.671232879, 0)
challenges.Size = UDim2.new(0, 175, 0, 50)
challenges.Font = Enum.Font.SourceSans
challenges.Text = "Challenges"
challenges.TextColor3 = Color3.fromRGB(0, 0, 0)
challenges.TextSize = 35.000

misc.Name = "misc"
misc.Parent = MainPage
misc.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
misc.BackgroundTransparency = 0.500
misc.BorderColor3 = Color3.fromRGB(100, 200, 100)
misc.Position = UDim2.new(0.533333361, 0, 0.671232879, 0)
misc.Size = UDim2.new(0, 175, 0, 50)
misc.Font = Enum.Font.SourceSans
misc.Text = "Extras"
misc.TextColor3 = Color3.fromRGB(0, 0, 0)
misc.TextSize = 35.000

maincmds.Name = "maincmds"
maincmds.Parent = MainPage
maincmds.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
maincmds.BackgroundTransparency = 0.500
maincmds.BorderColor3 = Color3.fromRGB(100, 200, 100)
maincmds.Position = UDim2.new(0, 0, 0.465753406, 0)
maincmds.Size = UDim2.new(0, 175, 0, 50)
maincmds.Font = Enum.Font.SourceSans
maincmds.Text = "Main"
maincmds.TextColor3 = Color3.fromRGB(0, 0, 0)
maincmds.TextSize = 35.000

secret.Name = "secret"
secret.Parent = MainPage
secret.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
secret.BackgroundTransparency = 0.500
secret.BorderColor3 = Color3.fromRGB(100, 200, 100)
secret.Position = UDim2.new(0.533333361, 0, 0.465753436, 0)
secret.Size = UDim2.new(0, 175, 0, 50)
secret.Font = Enum.Font.SourceSans
secret.Text = "???"
secret.TextColor3 = Color3.fromRGB(0, 0, 0)
secret.TextSize = 35.000

randomfunny.Name = "randomfunny"
randomfunny.Parent = MainPage
randomfunny.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
randomfunny.BackgroundTransparency = 1.000
randomfunny.Position = UDim2.new(0, 0, 0.150684938, 0)
randomfunny.Size = UDim2.new(0, 375, 0, 95)
randomfunny.Font = Enum.Font.SourceSans
randomfunny.Text = "random funny"
randomfunny.TextColor3 = Color3.fromRGB(170, 0, 0)
randomfunny.TextSize = 25.000
randomfunny.TextWrapped = true

HmmPage.Name = "HmmPage"
HmmPage.Parent = small
HmmPage.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
HmmPage.BackgroundTransparency = 0.600
HmmPage.Position = UDim2.new(-0.303, 0, 0.286, 0)
HmmPage.Size = UDim2.new(0, 375, 0, 365)

hmmMinimize.Name = "hmmMinimize"
hmmMinimize.Parent = HmmPage
hmmMinimize.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
hmmMinimize.BackgroundTransparency = 0.500
hmmMinimize.BorderColor3 = Color3.fromRGB(170, 0, 0)
hmmMinimize.Position = UDim2.new(0.930999994, 0, 0, 0)
hmmMinimize.Size = UDim2.new(0, 26, 0, 26)
hmmMinimize.Font = Enum.Font.SourceSans
hmmMinimize.Text = ""
hmmMinimize.TextColor3 = Color3.fromRGB(0, 0, 0)
hmmMinimize.TextSize = 14.000

hmmEnter.Name = "hmmEnter"
hmmEnter.Parent = HmmPage
hmmEnter.BackgroundColor3 = Color3.fromRGB(27, 42, 53)
hmmEnter.BackgroundTransparency = 0.500
hmmEnter.Position = UDim2.new(0.231999993, 0, 0.205479458, 0)
hmmEnter.Size = UDim2.new(0, 200, 0, 50)
hmmEnter.Font = Enum.Font.SourceSans
hmmEnter.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
hmmEnter.PlaceholderText = "???"
hmmEnter.Text = ""
hmmEnter.TextColor3 = Color3.fromRGB(0, 0, 0)
hmmEnter.TextSize = 25.000

hmmCheck.Name = "hmmCheck"
hmmCheck.Parent = HmmPage
hmmCheck.BackgroundColor3 = Color3.fromRGB(27, 42, 53)
hmmCheck.BackgroundTransparency = 0.500
hmmCheck.Position = UDim2.new(0.231999993, 0, 0.465753436, 0)
hmmCheck.Size = UDim2.new(0, 200, 0, 50)
hmmCheck.Font = Enum.Font.SourceSans
hmmCheck.Text = "???"
hmmCheck.TextColor3 = Color3.fromRGB(0, 0, 0)
hmmCheck.TextSize = 35.000

hmmhmm.Name = "hmmhmm"
hmmhmm.Parent = HmmPage
hmmhmm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hmmhmm.BackgroundTransparency = 1.000
hmmhmm.Position = UDim2.new(0.231999993, 0, 0.764383554, 0)
hmmhmm.Size = UDim2.new(0, 200, 0, 50)
hmmhmm.Font = Enum.Font.SourceSans
hmmhmm.Text = "???"
hmmhmm.TextColor3 = Color3.fromRGB(0, 0, 0)
hmmhmm.TextScaled = true
hmmhmm.TextSize = 25.000
hmmhmm.TextWrapped = true

hmmback.Name = "hmmback"
hmmback.Parent = HmmPage
hmmback.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
hmmback.BackgroundTransparency = 0.500
hmmback.BorderColor3 = Color3.fromRGB(255, 85, 0)
hmmback.Position = UDim2.new(0.855000019, 0, 0, 0)
hmmback.Size = UDim2.new(0, 26, 0, 26)
hmmback.Font = Enum.Font.SourceSans
hmmback.Text = ""
hmmback.TextColor3 = Color3.fromRGB(0, 0, 0)
hmmback.TextSize = 14.000

RealMainPage.Name = "RealMainPage"
RealMainPage.Parent = small
RealMainPage.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
RealMainPage.BackgroundTransparency = 0.600
RealMainPage.Position = UDim2.new(-0.303, 0, 0.286, 0)
RealMainPage.Size = UDim2.new(0, 375, 0, 365)

actualMinimize.Name = "actualMinimize"
actualMinimize.Parent = RealMainPage
actualMinimize.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
actualMinimize.BackgroundTransparency = 0.500
actualMinimize.BorderColor3 = Color3.fromRGB(170, 0, 0)
actualMinimize.Position = UDim2.new(0.930999994, 0, 0, 0)
actualMinimize.Size = UDim2.new(0, 26, 0, 26)
actualMinimize.Font = Enum.Font.SourceSans
actualMinimize.Text = ""
actualMinimize.TextColor3 = Color3.fromRGB(0, 0, 0)
actualMinimize.TextSize = 14.000

actualback.Name = "actualback"
actualback.Parent = RealMainPage
actualback.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
actualback.BackgroundTransparency = 0.500
actualback.BorderColor3 = Color3.fromRGB(255, 85, 0)
actualback.Position = UDim2.new(0.855000019, 0, 0, 0)
actualback.Size = UDim2.new(0, 26, 0, 26)
actualback.Font = Enum.Font.SourceSans
actualback.Text = ""
actualback.TextColor3 = Color3.fromRGB(0, 0, 0)
actualback.TextSize = 14.000

getidol.Name = "getidol"
getidol.Parent = RealMainPage
getidol.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
getidol.BackgroundTransparency = 0.500
getidol.BorderColor3 = Color3.fromRGB(100, 200, 100)
getidol.Position = UDim2.new(0, 0, 0.184854537, 0)
getidol.Size = UDim2.new(0, 175, 0, 50)
getidol.Font = Enum.Font.SourceSans
getidol.Text = "Get idols"
getidol.TextColor3 = Color3.fromRGB(0, 0, 0)
getidol.TextSize = 25.000

ceasegetidols.Name = "ceasegetidols"
ceasegetidols.Parent = RealMainPage
ceasegetidols.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
ceasegetidols.BackgroundTransparency = 0.500
ceasegetidols.BorderColor3 = Color3.fromRGB(100, 200, 100)
ceasegetidols.Position = UDim2.new(0, 0, 0.431429863, 0)
ceasegetidols.Size = UDim2.new(0, 175, 0, 50)
ceasegetidols.Font = Enum.Font.SourceSans
ceasegetidols.Text = "Stop getting idols"
ceasegetidols.TextColor3 = Color3.fromRGB(0, 0, 0)
ceasegetidols.TextSize = 25.000

coins.Name = "coins"
coins.Parent = RealMainPage
coins.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
coins.BackgroundTransparency = 0.500
coins.BorderColor3 = Color3.fromRGB(100, 200, 100)
coins.Position = UDim2.new(0.532603145, 0, 0.184533536, 0)
coins.Size = UDim2.new(0, 175, 0, 50)
coins.Font = Enum.Font.SourceSans
coins.Text = "Get coins"
coins.TextColor3 = Color3.fromRGB(0, 0, 0)
coins.TextSize = 25.000

zoom.Name = "zoom"
zoom.Parent = RealMainPage
zoom.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
zoom.BackgroundTransparency = 0.500
zoom.BorderColor3 = Color3.fromRGB(100, 200, 100)
zoom.Position = UDim2.new(0.533333302, 0, 0.431429863, 0)
zoom.Size = UDim2.new(0, 175, 0, 50)
zoom.Font = Enum.Font.SourceSans
zoom.Text = "Infinite zoom"
zoom.TextColor3 = Color3.fromRGB(0, 0, 0)
zoom.TextSize = 25.000

name.Name = "name"
name.Parent = RealMainPage
name.BackgroundColor3 = Color3.fromRGB(27, 42, 53)
name.BackgroundTransparency = 0.500
name.Position = UDim2.new(-0.0346666649, 0, 0.736986279, 0)
name.Size = UDim2.new(0, 175, 0, 25)
name.Font = Enum.Font.SourceSans
name.PlaceholderText = "Player name"
name.Text = ""
name.TextColor3 = Color3.fromRGB(0, 0, 0)
name.TextSize = 20.000

tp.Name = "tp"
tp.Parent = RealMainPage
tp.BackgroundColor3 = Color3.fromRGB(27, 42, 53)
tp.BackgroundTransparency = 0.500
tp.Position = UDim2.new(0.533333361, 0, 0.736986279, 0)
tp.Size = UDim2.new(0, 175, 0, 25)
tp.Font = Enum.Font.SourceSans
tp.Text = "Teleport to"
tp.TextColor3 = Color3.fromRGB(255, 255, 255)
tp.TextSize = 20.000

ChallengesPage.Name = "ChallengesPage"
ChallengesPage.Parent = small
ChallengesPage.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
ChallengesPage.BackgroundTransparency = 0.600
ChallengesPage.Position = UDim2.new(-0.303, 0, 0.286, 0)
ChallengesPage.Size = UDim2.new(0, 375, 0, 365)

chlminimize.Name = "chlminimize"
chlminimize.Parent = ChallengesPage
chlminimize.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
chlminimize.BackgroundTransparency = 0.500
chlminimize.BorderColor3 = Color3.fromRGB(170, 0, 0)
chlminimize.Position = UDim2.new(0.930999994, 0, 0, 0)
chlminimize.Size = UDim2.new(0, 26, 0, 26)
chlminimize.Font = Enum.Font.SourceSans
chlminimize.Text = ""
chlminimize.TextColor3 = Color3.fromRGB(0, 0, 0)
chlminimize.TextSize = 14.000

chlback.Name = "chlback"
chlback.Parent = ChallengesPage
chlback.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
chlback.BackgroundTransparency = 0.500
chlback.BorderColor3 = Color3.fromRGB(255, 85, 0)
chlback.Position = UDim2.new(0.855000019, 0, 0, 0)
chlback.Size = UDim2.new(0, 26, 0, 26)
chlback.Font = Enum.Font.SourceSans
chlback.Text = ""
chlback.TextColor3 = Color3.fromRGB(0, 0, 0)
chlback.TextSize = 14.000

init.Name = "init"
init.Parent = ChallengesPage
init.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
init.BorderColor3 = Color3.fromRGB(100, 200, 100)
init.Size = UDim2.new(0, 250, 0, 26)
init.Font = Enum.Font.SourceSans
init.Text = "INITIALISE"
init.TextColor3 = Color3.fromRGB(0, 0, 0)
init.TextSize = 25.000

initnote.Name = "initnote"
initnote.Parent = ChallengesPage
initnote.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
initnote.BackgroundTransparency = 1.000
initnote.Position = UDim2.new(0.0666666701, 0, 0.0219178088, 0)
initnote.Size = UDim2.new(0, 200, 0, 50)
initnote.Font = Enum.Font.SourceSans
initnote.Text = "(Initialise whenever your tribe changes)"
initnote.TextColor3 = Color3.fromRGB(0, 0, 0)
initnote.TextSize = 17.000

solo.Name = "solo"
solo.Parent = ChallengesPage
solo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
solo.BackgroundTransparency = 1.000
solo.Position = UDim2.new(0.231999993, 0, 0.0712328702, 0)
solo.Size = UDim2.new(0, 200, 0, 50)
solo.Font = Enum.Font.SourceSans
solo.Text = "Single Player Challenges"
solo.TextColor3 = Color3.fromRGB(0, 0, 0)
solo.TextSize = 30.000

getagrip.Name = "getagrip"
getagrip.Parent = ChallengesPage
getagrip.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
getagrip.BackgroundTransparency = 0.500
getagrip.BorderColor3 = Color3.fromRGB(100, 200, 100)
getagrip.Position = UDim2.new(0, 0, 0.208219185, 0)
getagrip.Size = UDim2.new(0, 100, 0, 25)
getagrip.Font = Enum.Font.SourceSans
getagrip.Text = "Get a Grip"
getagrip.TextColor3 = Color3.fromRGB(0, 0, 0)
getagrip.TextSize = 20.000

bywaybustle.Name = "bywaybustle"
bywaybustle.Parent = ChallengesPage
bywaybustle.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
bywaybustle.BackgroundTransparency = 0.500
bywaybustle.BorderColor3 = Color3.fromRGB(100, 200, 100)
bywaybustle.Position = UDim2.new(0.333333343, 0, 0.208219185, 0)
bywaybustle.Size = UDim2.new(0, 100, 0, 25)
bywaybustle.Font = Enum.Font.SourceSans
bywaybustle.Text = "Byway Bustle"
bywaybustle.TextColor3 = Color3.fromRGB(0, 0, 0)
bywaybustle.TextSize = 20.000

topofthemount.Name = "topofthemount"
topofthemount.Parent = ChallengesPage
topofthemount.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
topofthemount.BackgroundTransparency = 0.500
topofthemount.BorderColor3 = Color3.fromRGB(100, 200, 100)
topofthemount.Position = UDim2.new(0.666666687, 0, 0.208219185, 0)
topofthemount.Size = UDim2.new(0, 100, 0, 25)
topofthemount.Font = Enum.Font.SourceSans
topofthemount.Text = "Top of The Mount"
topofthemount.TextColor3 = Color3.fromRGB(0, 0, 0)
topofthemount.TextScaled = true
topofthemount.TextSize = 20.000
topofthemount.TextWrapped = true

crypticcombo.Name = "crypticcombo"
crypticcombo.Parent = ChallengesPage
crypticcombo.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
crypticcombo.BackgroundTransparency = 0.500
crypticcombo.BorderColor3 = Color3.fromRGB(100, 200, 100)
crypticcombo.Position = UDim2.new(0, 0, 0.331506848, 0)
crypticcombo.Size = UDim2.new(0, 100, 0, 25)
crypticcombo.Font = Enum.Font.SourceSans
crypticcombo.Text = "Cryptic Combo"
crypticcombo.TextColor3 = Color3.fromRGB(0, 0, 0)
crypticcombo.TextScaled = true
crypticcombo.TextSize = 20.000
crypticcombo.TextWrapped = true

tribal.Name = "tribal"
tribal.Parent = ChallengesPage
tribal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tribal.BackgroundTransparency = 1.000
tribal.Position = UDim2.new(0.200000003, 0, 0.430136979, 0)
tribal.Size = UDim2.new(0, 200, 0, 50)
tribal.Font = Enum.Font.SourceSans
tribal.Text = "Tribal"
tribal.TextColor3 = Color3.fromRGB(0, 0, 0)
tribal.TextSize = 30.000

tidepool.Name = "tidepool"
tidepool.Parent = ChallengesPage
tidepool.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
tidepool.BackgroundTransparency = 0.500
tidepool.BorderColor3 = Color3.fromRGB(100, 200, 100)
tidepool.Position = UDim2.new(0, 0, 0.610958934, 0)
tidepool.Size = UDim2.new(0, 150, 0, 34)
tidepool.Font = Enum.Font.SourceSans
tidepool.Text = "Tidepool"
tidepool.TextColor3 = Color3.fromRGB(0, 0, 0)
tidepool.TextSize = 20.000

beattothepunch.Name = "beattothepunch"
beattothepunch.Parent = ChallengesPage
beattothepunch.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
beattothepunch.BackgroundTransparency = 0.500
beattothepunch.BorderColor3 = Color3.fromRGB(100, 200, 100)
beattothepunch.Position = UDim2.new(0.453333348, 0, 0.610958934, 0)
beattothepunch.Size = UDim2.new(0, 150, 0, 34)
beattothepunch.Font = Enum.Font.SourceSans
beattothepunch.Text = "Beat To The Punch"
beattothepunch.TextColor3 = Color3.fromRGB(0, 0, 0)
beattothepunch.TextSize = 20.000

divedwelling.Name = "divedwelling"
divedwelling.Parent = ChallengesPage
divedwelling.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
divedwelling.BackgroundTransparency = 0.500
divedwelling.BorderColor3 = Color3.fromRGB(100, 200, 100)
divedwelling.Position = UDim2.new(0, 0, 0.767123342, 0)
divedwelling.Size = UDim2.new(0, 150, 0, 34)
divedwelling.Font = Enum.Font.SourceSans
divedwelling.Text = "Dive Dwelling"
divedwelling.TextColor3 = Color3.fromRGB(0, 0, 0)
divedwelling.TextSize = 20.000

Extra.Name = "Extra"
Extra.Parent = small
Extra.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Extra.BackgroundTransparency = 0.600
Extra.Position = UDim2.new(-0.303, 0, 0.286, 0)
Extra.Size = UDim2.new(0, 375, 0, 365)

header.Name = "header"
header.Parent = Extra
header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
header.BackgroundTransparency = 1.000
header.Size = UDim2.new(0, 375, 0, 50)
header.Font = Enum.Font.SourceSans
header.Text = "Credits"
header.TextColor3 = Color3.fromRGB(255, 255, 255)
header.TextSize = 40.000

Shalltear.Name = "Shalltear"
Shalltear.Parent = Extra
Shalltear.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shalltear.BackgroundTransparency = 1.000
Shalltear.Position = UDim2.new(0.231999993, 0, 0.1369863, 0)
Shalltear.Size = UDim2.new(0, 200, 0, 50)
Shalltear.Font = Enum.Font.SourceSans
Shalltear.Text = "Shalltear#8787 ~ Gui design"
Shalltear.TextColor3 = Color3.fromRGB(85, 0, 0)
Shalltear.TextSize = 30.000

Custom.Name = "Custom"
Custom.Parent = Extra
Custom.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Custom.BackgroundTransparency = 1.000
Custom.Position = UDim2.new(0.231999993, 0, 0.273972601, 0)
Custom.Size = UDim2.new(0, 200, 0, 50)
Custom.Font = Enum.Font.SourceSans
Custom.Text = "Custom#5556 ~ Coding"
Custom.TextColor3 = Color3.fromRGB(175, 85, 255)
Custom.TextSize = 30.000

thefunny.Name = "thefunny"
thefunny.Parent = Extra
thefunny.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
thefunny.BackgroundTransparency = 1.000
thefunny.Position = UDim2.new(0, 0, 0.430136979, 0)
thefunny.Size = UDim2.new(0, 375, 0, 50)
thefunny.Font = Enum.Font.SourceSans
thefunny.Text = "And a few other people, with testing this and whatnot"
thefunny.TextColor3 = Color3.fromRGB(100, 200, 100)
thefunny.TextScaled = true
thefunny.TextSize = 30.000
thefunny.TextWrapped = true

aand.Name = "aand"
aand.Parent = Extra
aand.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
aand.BackgroundTransparency = 1.000
aand.Position = UDim2.new(0.231999993, 0, 0.767123282, 0)
aand.Size = UDim2.new(0, 200, 0, 50)
aand.Font = Enum.Font.SourceSans
aand.Text = "...and the secrets"
aand.TextColor3 = Color3.fromRGB(175, 85, 255)
aand.TextSize = 15.000

extraminimize.Name = "extraminimize"
extraminimize.Parent = Extra
extraminimize.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
extraminimize.BackgroundTransparency = 0.500
extraminimize.BorderColor3 = Color3.fromRGB(170, 0, 0)
extraminimize.Position = UDim2.new(0.930999994, 0, 0, 0)
extraminimize.Size = UDim2.new(0, 26, 0, 26)
extraminimize.Font = Enum.Font.SourceSans
extraminimize.Text = ""
extraminimize.TextColor3 = Color3.fromRGB(0, 0, 0)
extraminimize.TextSize = 14.000

extraback.Name = "extraback"
extraback.Parent = Extra
extraback.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
extraback.BackgroundTransparency = 0.500
extraback.BorderColor3 = Color3.fromRGB(255, 85, 0)
extraback.Position = UDim2.new(0.855000019, 0, 0, 0)
extraback.Size = UDim2.new(0, 26, 0, 26)
extraback.Font = Enum.Font.SourceSans
thefunnyword = "chocolate chip pancake recipe"
extraback.Text = ""
extraback.TextColor3 = Color3.fromRGB(0, 0, 0)
extraback.TextSize = 14.000

Hidden.Name = "Hidden"
Hidden.Parent = small
Hidden.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Hidden.BackgroundTransparency = 0.600
Hidden.Position = UDim2.new(-0.303, 0, 0.286, 0)
Hidden.Size = UDim2.new(0, 375, 0, 365)

wacky.Name = "wacky"
wacky.Parent = Hidden
wacky.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
wacky.BackgroundTransparency = 1.000
wacky.Size = UDim2.new(0, 375, 0, 50)
wacky.Font = Enum.Font.SourceSansItalic
wacky.Text = "isnt that wacky?"
wacky.TextColor3 = Color3.fromRGB(85, 0, 0)
wacky.TextSize = 30.000

label.Name = "label"
label.Parent = Hidden
label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
label.BackgroundTransparency = 1.000
label.Position = UDim2.new(0.231999993, 0, 0.0821917802, 0)
label.Size = UDim2.new(0, 200, 0, 20)
label.Font = Enum.Font.SourceSans
label.Text = "(we have music)"
label.TextColor3 = Color3.fromRGB(0, 0, 0)
label.TextSize = 14.000

music.Name = "music"
music.Parent = Hidden
music.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
music.BackgroundTransparency = 0.500
music.BorderColor3 = Color3.fromRGB(100, 200, 100)
music.Position = UDim2.new(0, 0, 0.295890421, 0)
music.Size = UDim2.new(0, 200, 0, 50)
music.Font = Enum.Font.SourceSans
music.Text = "Play"
music.TextColor3 = Color3.fromRGB(0, 0, 0)
music.TextSize = 14.000

hiddenback.Name = "hiddenback"
hiddenback.Parent = Hidden
hiddenback.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
hiddenback.BackgroundTransparency = 0.500
hiddenback.BorderColor3 = Color3.fromRGB(255, 85, 0)
hiddenback.Position = UDim2.new(0.855000019, 0, 0, 0)
hiddenback.Size = UDim2.new(0, 26, 0, 26)
hiddenback.Font = Enum.Font.SourceSans
hiddenback.Text = ""
hiddenback.TextColor3 = Color3.fromRGB(0, 0, 0)
hiddenback.TextSize = 14.000

hiddenminimize.Name = "hiddenminimize"
hiddenminimize.Parent = Hidden
hiddenminimize.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
hiddenminimize.BackgroundTransparency = 0.500
hiddenminimize.BorderColor3 = Color3.fromRGB(170, 0, 0)
hiddenminimize.Position = UDim2.new(0.930999994, 0, 0, 0)
hiddenminimize.Size = UDim2.new(0, 26, 0, 26)
hiddenminimize.Font = Enum.Font.SourceSans
hiddenminimize.Text = ""
hiddenminimize.TextColor3 = Color3.fromRGB(0, 0, 0)
hiddenminimize.TextSize = 14.000

-- actual functions

local funnys = { 
	"the funny man",
	"funny",
	"bazinga",
	"you. does not count",
	"synapse",
	"financial advice",
	"In total, 909 individuals died in Jonestown, all but two from apparent cyanide poisoning, in an event termed 'revolutionary suicide' by Jones and some Peoples Temple members on an audio tape of the event, and in prior recorded discussions.",
	"a-ha",
	"take on me",
	"tax fraud",
	"https://www.youtube.com/watch?v=GhclOjt7d2U", -- El Tigr3 - She Swallowed Burning Coals
	"This isn't the first time Larry has been accused of something illegal, though, so we compiled a full list of every accusation against him.",
	"the kaaba",
	"that egg timer goes off im done for",
	"the bees",
	"what happens when the egg timer goes off?",
	"Bitcoin, now with new ‘just coin’ version",
	"hee hee",
	"Helpful tip: people die when they are killed",
	"'youre fricking exploiting'",
	"01:20:45 AM - [kenzie_wenzi]: HOW DID HE KNOW\n01:20:52 AM - [kenzie_wenzi]: I DIDNT PULL OUT MY KNIFE",
	"neutron",
	"https://www.youtube.com/watch?v=mCikIkXslP0", -- Magic Sword - The Way Home
	"I'm a Synapse X Customer. How will this affect me?\nSynapse X customers wont be able to benefit froom the uniqie skills of the Sentinel development team.",
	"armenian genocide",
	"i hate israel",
	"we only support pyramid schemes if we're the ones making money",
	"xue hua piao piao bei feng xiao xiao",
	"https://www.youtube.com/watch?v=W8x4m-qpmJ8", -- Yi Jian Mei
	"08:46:39 PM - [CaramelCake142]: Call me naomi :{\n08:46:43 PM - [PandaTheMatt]: no\n08:46:46 PM - [KnivescopeGames]: no\n08:46:48 PM - [CustomCoded]: no",
	"cheemsborger",
	"Lucifer, CEO of Hell",
	"wide putin wide putin wide putin wide putin wide putin wide putin wide putin wide putin wide putin",
	"tax evasion",
	"cheese",
	"pancake recipe",
	"give me the eggs"
}
uis.InputBegan:connect(function(input)
	if input.KeyCode == Enum.KeyCode.LeftControl then
		MainPage:TweenPosition(UDim2.new(0, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
	end
end)

-- Button Closes
minimize.MouseButton1Down:connect(function()
	MainPage:TweenPosition(UDim2.new(-0.303, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
end)
hmmMinimize.MouseButton1Down:connect(function()
	HmmPage:TweenPosition(UDim2.new(-0.303, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
end)
actualMinimize.MouseButton1Down:connect(function()
	RealMainPage:TweenPosition(UDim2.new(-0.303, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
end)
hmmback.MouseButton1Down:connect(function()
	HmmPage:TweenPosition(UDim2.new(-0.303, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
	MainPage:TweenPosition(UDim2.new(0, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
end)
actualback.MouseButton1Down:connect(function()
	RealMainPage:TweenPosition(UDim2.new(-0.303, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
	MainPage:TweenPosition(UDim2.new(0, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
end)
chlback.MouseButton1Down:connect(function()
	ChallengesPage:TweenPosition(UDim2.new(-0.303, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
	MainPage:TweenPosition(UDim2.new(0, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
end)
chlminimize.MouseButton1Down:connect(function()
	ChallengesPage:TweenPosition(UDim2.new(-0.303, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
end)
extraback.MouseButton1Down:connect(function()
	Extra:TweenPosition(UDim2.new(-0.303, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
	MainPage:TweenPosition(UDim2.new(0, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
end)
extraminimize.MouseButton1Down:connect(function()
	Extra:TweenPosition(UDim2.new(-0.303, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
end)
hiddenback.MouseButton1Down:connect(function()
	Hidden:TweenPosition(UDim2.new(-0.303, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
	MainPage:TweenPosition(UDim2.new(0, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
end)
hiddenminimize.MouseButton1Down:connect(function()
	Hidden:TweenPosition(UDim2.new(-0.303, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
end)
-- Main Page
randomfunny.Text = funnys[math.random(#funnys)]
secret.MouseButton1Down:connect(function()
	MainPage:TweenPosition(UDim2.new(-0.303, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
	HmmPage:TweenPosition(UDim2.new(0, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
end)
maincmds.MouseButton1Down:connect(function()
	MainPage:TweenPosition(UDim2.new(-0.303, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
	RealMainPage:TweenPosition(UDim2.new(0, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
end)
createdby.MouseButton1Down:connect(function()
	randomfunny.Text = "Here's a secret: go to ??? and put in '"..thefunnyword.."'. It's copied to your clipboard."
	syn_clipboard_set(thefunnyword)
	wait(5)
	randomfunny.Text = funnys[math.random(#funnys)]
end)
fullclose.MouseButton1Down:connect(function()
	MainPage:TweenPosition(UDim2.new(-0.303, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
	game:GetService("Debris"):AddItem(small,2.5)
end)
challenges.MouseButton1Down:connect(function()
	ChallengesPage:TweenPosition(UDim2.new(0, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
	MainPage:TweenPosition(UDim2.new(-0.303, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
end)
misc.MouseButton1Down:connect(function()
	MainPage:TweenPosition(UDim2.new(-0.303, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
	Extra:TweenPosition(UDim2.new(0, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
end)
-- hmm
function csdmad()
	hmmEnter.Text = ":csdmad:"
	hmmCheck.Text = ":csdmad:"
	hmmhmm.Text = ":csdmad:"
	HmmPage.BackgroundColor3 = Color3.fromRGB(125,0,0)
	HmmPage.BorderColor3 = Color3.fromRGB(125,0,0)
	hmmhmm.TextColor3 = Color3.fromRGB(255,0,0)
	hmmEnter.TextColor3 = Color3.fromRGB(255,0,0)
	hmmCheck.TextColor3 = Color3.fromRGB(255,0,0)
	hmmEnter.BackgroundTransparency = 1
	hmmCheck.BackgroundTransparency = 1
	wait(3.5)
	HmmPage:TweenPosition(UDim2.new(-0.303, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
	MainPage:TweenPosition(UDim2.new(0, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
	secret:Destroy()
	game:GetService("Debris"):AddItem(HmmPage,3)
	Hidden:Destroy()
end
hmmCheck.MouseButton1Down:connect(function()
	if hmmEnter.Text == thefunnyword then
		HmmPage:TweenPosition(UDim2.new(-0.303, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
		Hidden:TweenPosition(UDim2.new(0, 0, 0.286, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Quint,1)
	else
		csdmad() -- wow what funny
	end
end)
-- oh?
music.MouseButton1Down:connect(function()
    if not workspace:FindFirstChild("Shalltear") then
		local sh = Instance.new("Sound",workspace)
		local sfx = plr.PlayerGui.NoReset.SFX
		sh.Name = "Shalltear"
		sh.SoundId = "rbxassetid://549984712"
		sh.Volume = 1
		sh.Playing = true
		for _,child in pairs(sfx:GetChildren()) do
		    if child:IsA("Sound") then
		        child.Volume = 0.2
		    end
		    if child:IsA("Folder") then
		        for _,thems in pairs(child:GetChildren()) do
		            if thems:IsA("Sound") then
		                thems.Volume = 0.2
		            end
		        end
		    end
		end
		elseif workspace:FindFirstChild("Shalltear") ~= nil then
			workspace.Shalltear:Destroy()
			for _,child in pairs(sfx:GetChildren()) do
    		    if child:IsA("Sound") then
    		        child.Volume = 1
    		    end
    		    if child:IsA("Folder") then
    		        for _,thems in pairs(child:GetChildren()) do
    		            if thems:IsA("Sound") then
    		                thems.Volume = 1
    		            end
    		        end
    		    
    	    end
		end
	end
end)

-- Real Main Page
zoom.MouseButton1Down:connect(function()
	if plr.CameraMaxZoomDistance == 400 then
	    plr.CameraMaxZoomDistance = 50
	else
	   	plr.CameraMaxZoomDistance = 400
	end
end)
getidol.MouseButton1Down:connect(function()
	yesasda = true
	local firstasd = false
	for _,test in pairs(Misc.Spawned:GetChildren()) do
	if yesasda == false then
			return end
	if firstasd == true then
	if test.CFrame then
	firstasd = true
	Char.HumanoidRootPart.CFrame = CFrame.new(test.CFrame.X, test.CFrame.Y+12, test.CFrame.Z)
	end
	wait(3.75)
	else
	if test.CFrame then
	Char.HumanoidRootPart.CFrame = CFrame.new(test.CFrame.X, test.CFrame.Y+12, test.CFrame.Z)
	end
	wait(3.75)
	end
	end
end)
ceasegetidols.MouseButton1Down:connect(function()
	yesasda = false
end)
tp.MouseButton1Down:connect(function()
	--[[local plrname = name.Text
	if workspace:FindFirstChild(plrname) then
		plr.Character.HumanoidRootPart.CFrame = plrname.HumanoidRootPart.Position
	else
		warn("Couldn't find player")
	end]]--
end)
coins.MouseButton1Down:connect(function()
	if yesasda == false then
		yesasda = true
		local Coinsx = {}
		for i, v in pairs(Misc:GetDescendants())do
			if v.Name == "Coin" then
				table.insert(Coinsx,v)
			end
		end
		for i, v in pairs(Coinsx) do
			if v.Transparency < 0.9 then
			Char.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(15,10,15)
			wait(1)
			Char.Humanoid:MoveTo(v.CFrame.p)
			wait(2)
			end
		end
	end
	if yesasda == true then
		yesasda = false
	end
end)

-- Challenges Page
init.MouseButton1Down:connect(function()
	local MyTeam = plr.Team
	local GameData = game.ReplicatedStorage.GameData
	local Tribe1 = GameData.Tribe1Name
	local Tribe2 = GameData.Tribe2Name
	local TribeName = MyTeam.Name
	local TribeNum = 0
	PlayerTribe = MyTeam.Name
	print("Tribe : "..MyTeam.Name)
	if MyTeam.Name == Tribe1.Value then
		TribeNum = 1
		PlayerTribeNum = 1
	elseif MyTeam.Name == Tribe2.Value then
		TribeNum = 2
		PlayerTribeNum = 2
	end
	print("Num : "..tostring(TribeNum))
end)
-- * Solo Challenges *
getagrip.MouseButton1Down:connect(function()
	plr.PlayerGui.GUIs.Center.GetAGrip:Destroy()
end)
topofthemount.MouseButton1Down:connect(function()
	Char.HumanoidRootPart.CFrame = game.Workspace["Top of the Mount"].Boundaries.CFrame + Vector3.new(0,1,0)
	wait(2)
	Char.HumanoidRootPart.Anchored = false
	Char.Head.Anchored = true
end)
crypticcombo.MouseButton1Down:connect(function()
	local Challenge = game.Workspace:FindFirstChild("Cryptic Combo")
	if Challenge ~= nil then
		local Pens = Challenge:FindFirstChild("Pens")
		if Pens == nil then
			Pens = Challenge:FindFirstChild("pens")
		end
		local PensCount = {
			Pen1 = {
				Pen = Pens:FindFirstChild("Pen1"),
				Count = 0
			},
			Pen2 = {
				Pen = Pens:FindFirstChild("Pen2"),
				Count = 0
			},
			Pen3 = {
				Pen = Pens:FindFirstChild("Pen3"),
				Count = 0
			},
			Pen4 = {
				Pen = Pens:FindFirstChild("Pen4"),
				Count = 0
			}
		}
		local Pc = 1
		for i, v in pairs(PensCount) do
			if v.Pen == nil then
				v.Pen = Pens:FindFirstChild("pen".. tostring(Pc))
			end
			Pc = Pc + 1
		end
		for i, v in pairs(PensCount) do
			v.Count = table.getn(v.Pen:GetChildren())
		end
		for i, v in pairs(PensCount) do
			print(tostring(i).. " : ".. tostring(v.Count))
		end
	end
end)
-- * Tribal Challenges * 
tidepool.MouseButton1Down:connect(function()
	local MyTribeMap = game.Workspace.Tidepool.Map:FindFirstChild("tribe".. tostring(PlayerTribeNum))
	if MyTribeMap == nil then
		MyTribeMap = game.Workspace.Tidepool.Map:FindFirstChild("Tribe".. tostring(PlayerTribeNum))
	end
	local StartPlate1 = MyTribeMap:FindFirstChild("StartPlate1")
	if StartPlate1 == nil then
		StartPlate1 = MyTribeMap:FindFirstChild("Startplate1")
	end
	local StartPlate2 = MyTribeMap:FindFirstChild("StartPlate2")
	if StartPlate2 == nil then
		StartPlate2 = MyTribeMap:FindFirstChild("Startplate2")
	end
	local EndPlate1 = MyTribeMap:FindFirstChild("EndPlate1")
	if EndPlate1 == nil then
		EndPlate1 = MyTribeMap:FindFirstChild("Endplate1")
	end
	local EndPlate2 = MyTribeMap:FindFirstChild("EndPlate2")
	if EndPlate2 == nil then
		EndPlate2 = MyTribeMap:FindFirstChild("Endplate2")
	end
	for i = 0,6 do
		Char.HumanoidRootPart.CFrame = EndPlate1.CFrame
		wait(0.5)
		Char.HumanoidRootPart.CFrame = StartPlate1.CFrame
		wait(0.5)
		Char.HumanoidRootPart.CFrame = EndPlate2.CFrame
		wait(0.5)
		Char.HumanoidRootPart.CFrame = StartPlate2.CFrame
		wait(0.5)
	end
end)
beattothepunch.MouseButton1Down:connect(function()
	local MyTribeMap = game.Workspace["Beat to the Punch"].Map:FindFirstChild("tribe".. tostring(PlayerTribeNum))
	if MyTribeMap == nil then
		MyTribeMap = game.Workspace["Beat to the Punch"].Map:FindFirstChild("Tribe".. tostring(PlayerTribeNum))
	end
	local Finish = MyTribeMap:FindFirstChild("Finish")
	if Finish == nil then
		Finish = MyTribeMap:FindFirstChild("finish")
	end
	Char.HumanoidRootPart.CFrame = Finish.CFrame + Vector3.new(0,3,0)
end)
divedwelling.MouseButton1Down:connect(function()
	local MyTribeMap = game.Workspace["Dive Dwelling"].Map:FindFirstChild("tribe".. tostring(PlayerTribeNum))
	if MyTribeMap == nil then
		MyTribeMap = game.Workspace["Dive Dwelling"].Map:FindFirstChild("Tribe".. tostring(PlayerTribeNum))
	end
	local MyPearls = MyTribeMap:FindFirstChild("Pearls")
	if MyPearls == nil then
		MyPearls = MyTribeMap:FindFirstChild("pearls")
	end
	for i, v in pairs(MyPearls:GetChildren())do
		Char.HumanoidRootPart.CFrame = v.CFrame
		wait(0.5)
	end
end)

start()
