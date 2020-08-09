local Loader = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ESP = Instance.new("TextLabel")
local CESP = Instance.new("TextLabel")
local FreePeople = Instance.new("TextLabel")
local Load = Instance.new("TextButton")
local ESPKey = Instance.new("TextBox")
local CESPKey = Instance.new("TextBox")
local Free = Instance.new("TextBox")
local TextLabel = Instance.new("TextLabel")
local file = isfile("FtFSettings.json")

Loader.Name = "Loader"
Loader.Parent = game.CoreGui

Frame.Parent = Loader
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(-0.00071907352, 0, 0.263242364, 0)
Frame.Size = UDim2.new(0, 226, 0, 233)
Frame.Style = Enum.FrameStyle.DropShadow

ESP.Name = "ESP"
ESP.Parent = Frame
ESP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ESP.BackgroundTransparency = 1.000
ESP.Position = UDim2.new(-0.0338894688, 0, 0.0102559999, 0)
ESP.Size = UDim2.new(0, 144, 0, 25)
ESP.Font = Enum.Font.SourceSans
ESP.Text = "ESP Key:"
ESP.TextColor3 = Color3.fromRGB(255, 255, 255)
ESP.TextSize = 30.000

CESP.Name = "CESP"
CESP.Parent = Frame
CESP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CESP.BackgroundTransparency = 1.000
CESP.Position = UDim2.new(0.0399999991, 0, 0.181999996, 0)
CESP.Size = UDim2.new(0, 144, 0, 25)
CESP.Font = Enum.Font.SourceSans
CESP.Text = "ComputerESP Key:"
CESP.TextColor3 = Color3.fromRGB(255, 255, 255)
CESP.TextSize = 25.000

FreePeople.Name = "FreePeople"
FreePeople.Parent = Frame
FreePeople.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FreePeople.BackgroundTransparency = 1.000
FreePeople.Position = UDim2.new(0.0399999991, 0, 0.349000007, 0)
FreePeople.Size = UDim2.new(0, 144, 0, 25)
FreePeople.Font = Enum.Font.SourceSans
FreePeople.Text = "FreePeople Key:"
FreePeople.TextColor3 = Color3.fromRGB(255, 255, 255)
FreePeople.TextSize = 30.000

Load.Name = "Load"
Load.Parent = Frame
Load.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
Load.BackgroundTransparency = 0.750
Load.BorderColor3 = Color3.fromRGB(85, 255, 127)
Load.Position = UDim2.new(0.0221238937, 0, 0.742489278, 0)
Load.Size = UDim2.new(0, 200, 0, 50)
Load.Font = Enum.Font.SourceSans
Load.Text = "Load"
Load.TextColor3 = Color3.fromRGB(255, 255, 255)
Load.TextSize = 25.000

ESPKey.Name = "ESPKey"
ESPKey.Parent = Frame
ESPKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ESPKey.BorderColor3 = Color3.fromRGB(255, 255, 255)
ESPKey.Position = UDim2.new(0.795000017, 0, 0.0250000004, 0)
ESPKey.Size = UDim2.new(0, 35, 0, 25)
ESPKey.Font = Enum.Font.SourceSans
ESPKey.Text = "X"
ESPKey.TextColor3 = Color3.fromRGB(0, 0, 0)
ESPKey.TextSize = 25.000

CESPKey.Name = "CESPKey"
CESPKey.Parent = Frame
CESPKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CESPKey.BorderColor3 = Color3.fromRGB(255, 255, 255)
CESPKey.Position = UDim2.new(0.80400002, 0, 0.189999998, 0)
CESPKey.Size = UDim2.new(0, 35, 0, 25)
CESPKey.Font = Enum.Font.SourceSans
CESPKey.Text = "R"
CESPKey.TextColor3 = Color3.fromRGB(0, 0, 0)
CESPKey.TextSize = 25.000

Free.Name = "FreeKey"
Free.Parent = Frame
Free.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Free.BorderColor3 = Color3.fromRGB(255, 255, 255)
Free.Position = UDim2.new(0.803849578, 0, 0.355472118, 0)
Free.Size = UDim2.new(0, 35, 0, 25)
Free.Font = Enum.Font.SourceSans
Free.Text = "Q"
Free.TextColor3 = Color3.fromRGB(0, 0, 0)
Free.TextSize = 25.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0221238937, 0, 0.489270389, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSansItalic
TextLabel.Text = "^ Defaults\nmade this in like, 5 minutes\nLeave empty to not load"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

if file then
	local savedsets = game:GetService("HttpService"):JSONDecode(readfile("FtFSettings.json"))
	ESPKey.Text = savedsets.ESPK
	CESPKey.Text = savedsets.CESPK
	Free.Text = savedsets.FreeK
end

Load.MouseButton1Down:connect(function()
	if not file then
		local sets = { -- dear god i hate json tables
			["ESPK"] =  string.upper(ESPKey.Text), -- has to be in caps, not valid Enum otherwise
			["CESPK"] = string.upper(CESPKey.Text), -- if its LeftControl or anything then everything will break
			["FreeK"] = string.upper(Free.Text) -- ^ note to maybe fix that
		}
		local setsave = game:GetService("HttpService"):JSONEncode(sets)
		writefile("FtFSettings.json",setsave)
	elseif file then
		local sets = { -- imagine reusing your own code smh
			["ESPK"] =  string.upper(ESPKey.Text),
			["CESPK"] = string.upper(CESPKey.Text),
			["FreeK"] = string.upper(Free.Text)
		}
		local setsave = game:GetService("HttpService"):JSONEncode(sets)
		writefile("FtFSettings.json",setsave)
	end
	Loader:Destroy()
	if ESPKey.Text ~= "" then
		loadstring(game:HttpGet('https://raw.githubusercontent.com/NotCustom/Scripts/master/Flee%20The%20Facility/FtFLoaderScripts/FtF_ESP.lua'))()
		_G.ESPKey = ESPKey.Text
	end
	if CESPKey.Text ~= "" then
		_G.CEspKey = CESPKey.Text
		loadstring(game:HttpGet('https://raw.githubusercontent.com/NotCustom/Scripts/master/Flee%20The%20Facility/FtFLoaderScripts/Ftf_ComputerESP.lua'))()
	end
	if Free.Text ~= "" then
		loadstring(game:HttpGet('https://raw.githubusercontent.com/NotCustom/Scripts/master/Flee%20The%20Facility/FtFLoaderScripts/Ftf_SavePeople.lua'))()
		_G.SavePeopleKey = Free.Text
	end
end)
game.StarterGui:SetCore("ChatMakeSystemMessage", {
	Text = "Loaded!",
	Color = Color3.fromRGB(175,85,255),
	Font = Enum.Font.SourceSansBold,
	TextSize = 18
})
