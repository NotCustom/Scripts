-- 09:20:15 PM - [itsMechronicalMega]: sowwy custom~kun...
-- please never call me this again
uis = game:GetService("UserInputService")
plr = game.Players.LocalPlayer
NEW = require(game:GetService("ReplicatedStorage").LoadLibrary.RbxUtility).Create
-- ^ parent parts to minigame map so it gets removed with map
function topos(x,y,z)
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(x,y,z)
    -- existence made easier!
end
function ping(Header,Msg)
    game.StarterGui:SetCore("SendNotification", {
        Title = Header,
        Text = Msg,
        Duration = 4
    })
end

uis.InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode.Q then
        if workspace:FindFirstChild("Manic Mining") then
            print("what do i do lord\ndestroy the child\ncorrupt them all")
            local mine = workspace["Manic Mining"]
            for _,child in pairs(mine:GetChildren()) do
                if child.Name == "dirt" or child.Name == "dirts" then
                    child:Destroy()
                end
            end
            --plr.Character.HumanoidRootPart.CFrame = mine[""].CFrame - CFrame.new(4,0,0)
        end
        if workspace:FindFirstChild("Only One Path") then
            if workspace["Only One Path"].mapn.Value == "" then
                topos(28.2, 85.8, -0.1)
            end
            if workspace["Only One Path"].mapn.Value == "Ritual" then
                
            end
        end
        if workspace:FindFirstChild("Turntable Scurry") then
            topos(0, 115.4, 0)
        end
        if workspace:FindFirstChild("Expedition Sprint") then
            if workspace["Expedition Sprint"].mapn.Value == "High Peak" then
                topos(50.0934715, 255.104126, -5.76367521)
            end
        end
        if workspace:FindFirstChild("Compactor Crash") then
            topos(51.5406075, 95.1099854, -46.3891144)
        end
        if workspace:FindFirstChild("Hedge Way Out") then
            workspace["Hedge Way Out"].hedges:Destroy()
        end
        if workspace:FindFirstChild("Lane Jumping") then
            topos(59.0051155, 72.0980911, 123.205139)
        end
        if workspace:FindFirstChild("Lava Forecast") then
        	topos(-99.1484222, 66.4740677, -21.999424)
        end
        if workspace:FindFirstChild("Penguin Pushover") then
        	workspace["Penguin Pushover"].penguins:Destroy()
        end
        if workspace:FindFirstChild("Bullet Evasion") then
        	workspace["Bullet Evasion"].bullets:Destroy()
        end
        if workspace:FindFirstChild("Blox City Brawl") then
            topos(23.2213268, 115.508118, -187.013397) 
        end
        if workspace:FindFirstChild("Aztec Adventure") then
            topos(-575.656982, 31.6598053, -27.1059475)
        end
        if workspace:FindFirstChild("Bullet Bound") then
            topos(44.7786, 133.691, -45.1812)
        end
        if workspace:FindFirstChild("Shark Survival") then
            if workspace["Shark Survival"].mapn.Value == "Winter" then
            	topos(159.385, 87.3824, -24.1924)
            end
            if workspace["Shark Survival"].mapn.Value == "" then
            	topos(183.032318, 74.5308151, -57.0457191)
            	-- default map
            end
        end
        if workspace:FindFirstChild("Laser Guidance") then
            workspace["Laser Guidance"].vlaser:Destroy()
            workspace["Laser Guidance"].hlaser:Destroy()
        end
        if workspace:FindFirstChild("Trial Traversing") then
            topos(54.3476906, 155.750671, 882.103394) -- which is this???
            if workspace["Trial Traversing"].mapn.Value == "Simulation" then
            	topos(41.0362206, 82.1999283, -30.3597031)
           	end
           	if workspace["Trial Traversing"].mapn.Value == "" then
           		topos(42.2373924, 93.0999756, -40.1501465)
           	end
           	if workspace["Trial Traversing"].mapn.Value == "Lavascape" then
           	    
           	end
        end
        if workspace:FindFirstChild("The Crusher") then
        	topos(-32.4165611, -100.058777, -52.3167686)
        end
        if workspace:FindFirstChild("Crystal Clear") then
            local igems = workspace["Crystal Clear"].igems
            local hasgem = false
            igems.ChildAdded:connect(function(child)
                if hasgem == false then
                   plr.Character.HumanoidRootPart.CFrame = child.CFrame
                   hasgem = true
                end
            end)
        end
        if workspace:FindFirstChild("Skewer Shuffle") then
            workspace["Skewer Shuffle"].Spike:Destroy()
        end
        if workspace:FindFirstChild("The Sweeper") then
            workspace["The Sweeper"].sweeper:Destroy()
        end
        if workspace:FindFirstChild("Revolution Cube") then
            NEW'Part'{Parent = workspace["Revolution Cube"],Name = "PLATFORM",Size = Vector3.new(17,1,17),Position = Vector3.new(129.284, 114.654, -946.287),Anchored = true}
            topos(129.284, 116.654, -946.287)
        end
        if workspace:FindFirstChild("Just Jump") then
           workspace["Just Jump"].map.rope:Destroy() 
        end
        if workspace:FindFirstChild("Uncertain Ground") then
            NEW'Part'{Parent = workspace["Uncertain Ground"],Name = "Platform",Size = Vector3.new(17,1,17),Position = Vector3.new(19.6044769, 98.766319, -128.549683),Anchored = true}
            topos(19.6044769, 98.766319, -128.549683)
        end
        if workspace:FindFirstChild("Cake Delivery") then
            -- i hate having to try and make this work
        end
        if workspace:FindFirstChild("Four Corners") then
            NEW'Part'{Parent = workspace['Four Corners'],Name = 'PLATFORM',Size = Vector3.new(17,1,17),Position = Vector3.new(),Anchored = true}
            -- position also needed here 
        end
        if workspace:FindFirstChild("Teamwork Trial") then
            topos()
            -- kinda need position doe
        end
        if workspace:FindFirstChild("Avalanche") then
            topos(-12.3015432, 37.4725342, -183.86824)
        end
        if workspace:FindFirstChild("Pyre Pit") then
            topos(15.9796066, 60.8599358, 1.58988118)
        end
        if workspace:FindFirstChild("Compactor Crash") then
            workspace["Compactor Crash"].crusher:Destroy()
        end
        if workspace:FindFirstChild("Hard-Pressed") then
            workspace["Hard-Pressed"].map.presses:Destroy()
        end
        if workspace:FindFirstChild("Romper Stomper") then
            if not string.match(workspace.notification.Value,plr.Name) then
                topos(156.021225, 43, -200.100769)
            end
        end
        if workspace:FindFirstChild("Mechanical Mayhem") then
            workspace["Mechanical Mayhem"].map.cogs.mainspinner:Destroy()
        end
        if workspace:FindFirstChild("Cliffside Chaos") then
            topos(8.58114815, 293.600891, -38.3512726)
        end
        if workspace:FindFirstChild("Block Hunt") then
            -- i just tossed the entire original idea out the window and went with this
            -- really wish i had a decent method of determining team
            local redblocks = workspace["Block Hunt"].DroppedRedBlocks
            local blueblocks = workspace["Block Hunt"].DroppedBlueBlocks
            for _,reds in pairs(redblocks:GetChildren()) do
                if not reds:FindFirstChild("MDSHighlight") then
                    local highlight = Instance.new("BoxHandleAdornment",reds)
                    highlight.Name = "MDSHighlight"
                    highlight.Adornee = reds
                    highlight.ZIndex = 10
                    highlight.AlwaysOnTop = true
                    highlight.Size = reds.Size
                    highlight.Color3 = Color3.new(255,0,0)
                    highlight.Transparency = 0
                end
            end
            for _,blues in pairs(blueblocks:GetChildren()) do
                if not blues:FindFirstChild("MDSHighlight") then
                    local highlight = Instance.new("BoxHandleAdornment",blues)
                    highlight.Name = "MDSHighlight"
                    highlight.Adornee = blues
                    highlight.ZIndex = 10
                    highlight.AlwaysOnTop = true
                    highlight.Size = blues.Size
                    highlight.Color3 = Color3.new(0,0,255)
                    highlight.Transparency = 0
                end
            end
        end
    end
end)
