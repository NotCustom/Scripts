local plr = game.Players.LocalPlayer
local char = game.Players
local debris = game:GetService("Debris") --dont feel like using :Destroy()
local uis = game:GetService("UserInputService") -- ik theres an easier way to do this i just use uis because i can
-- guis
local ScreenGui = Instance.new("ScreenGui")
local messageMain = Instance.new("TextLabel")
local uselessSecondThing = Instance.new("TextLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
--ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

messageMain.Name = "messageMain"
messageMain.Parent = ScreenGui
messageMain.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
messageMain.BackgroundTransparency = 0.500
messageMain.BorderColor3 = Color3.fromRGB(27, 27, 27)
messageMain.Position = UDim2.new(-0.162, 0,0.259, 0)
messageMain.Size = UDim2.new(0, 200, 0, 50)
messageMain.Font = Enum.Font.SourceSans
messageMain.Text = "PrisonLife keys loaded"
messageMain.TextColor3 = Color3.fromRGB(170, 85, 255)
messageMain.TextSize = 25.000

uselessSecondThing.Name = "uselessSecondThing" -- useless and just gets deleted after anyway
uselessSecondThing.Parent = ScreenGui
uselessSecondThing.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
uselessSecondThing.BackgroundTransparency = 0.500
uselessSecondThing.BorderColor3 = Color3.fromRGB(27, 27, 27)
uselessSecondThing.Position = UDim2.new(-0.162, 0,0.259, 0)
uselessSecondThing.Size = UDim2.new(0, 200, 0, 50)
uselessSecondThing.Font = Enum.Font.SourceSans
uselessSecondThing.Text = "Written by Mai"
uselessSecondThing.TextColor3 = Color3.fromRGB(170, 85, 255)
uselessSecondThing.TextSize = 25.000

-- actual functions down here lol
wait(2) -- precautions
messageMain:TweenPosition(UDim2.new(0, 0,0.259, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
wait(1.5)
messageMain:TweenPosition(UDim2.new(0, 0,0.176, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
wait(0.5)
uselessSecondThing:TweenPosition(UDim2.new(0, 0,0.259,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
wait(2)
uselessSecondThing:TweenPosition(UDim2.new(-0.162, 0,0.259, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
wait(0.5)
messageMain:TweenPosition(UDim2.new(0, 0,0.259, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
wait(1)
messageMain:TweenPosition(UDim2.new(-0.162, 0,0.259, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
debris:AddItem(uselessSecondThing,5)
-- ok uhhh
function notify(text)
	messageMain.Text = text
	messageMain:TweenPosition(UDim2.new(0, 0,0.259, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
	wait(2)
	messageMain:TweenPosition(UDim2.new(-0.162, 0,0.259, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint)
end

uis.InputBegan:connect(function(input)
	if input.KeyCode == Enum.KeyCode.Q then
		if workspace:FindFirstChild("Doors") then
			workspace.Doors:Destroy()
			notify("Doors removed!")
		else
			notify("No doors found!")
		end
	end
end)
uis.InputBegan:connect(function(input)
	if input.KeyCode == Enum.KeyCode.E then
		mainRemotes = game.ReplicatedStorage meleeRemote = mainRemotes['meleeEvent'] mouse = game.Players.LocalPlayer:GetMouse() punching = false cooldown = false function punch() cooldown = true local part = Instance.new("Part", game.Players.LocalPlayer.Character) part.Transparency = 1 part.Size = Vector3.new(5, 2, 3) part.CanCollide = false local w1 = Instance.new("Weld", part) w1.Part0 = game.Players.LocalPlayer.Character.Torso w1.Part1 = part w1.C1 = CFrame.new(0,0,2) part.Touched:connect(function(hit) if game.Players:FindFirstChild(hit.Parent.Name) then local plr = game.Players:FindFirstChild(hit.Parent.Name) if plr.Name ~= game.Players.LocalPlayer.Name then part:Destroy() for i = 1,100 do meleeRemote:FireServer(plr) end end end end) wait(1) cooldown = false part:Destroy() end mouse.KeyDown:connect(function(key) if cooldown == false then if key:lower() == "f" then punch() end end end)
		-- for some reason the formatting broke this one idk why
		notify("Superpunch enabled")
	end
end)
uis.InputBegan:connect(function(input)
	if input.KeyCode == Enum.KeyCode.T then
		for i,v in pairs(workspace.Prison_ITEMS.giver:GetChildren()) do
		lol = workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
		notify("Given weapons!")
		end
	end
end)
