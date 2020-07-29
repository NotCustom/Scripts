-- 09:20:15 PM - [itsMechronicalMega]: sowwy custom~kun...
-- please never call me this again
uis = game:GetService("UserInputService")
plr = game.Players.LocalPlayer
NEW = require(game:GetService("ReplicatedStorage").LoadLibrary.RbxUtility).Create
-- ^ parent parts to minigame map so it gets removed with map
function topos(x,y,z)
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(x,y,z)
end
function topart(object,addpos) -- addpos takes Vector3 only :(((
    -- yES THIS MAKES THINGS EASIER WHY AM I JUST NOW ADDING IT
    if addpos then
        plr.Character.HumanoidRootPart.CFrame = object.CFrame + addpos
    else
        plr.Character.HumanoidRootPart.CFrame = object.CFrame
    end
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
        end
        if workspace:FindFirstChild("Only One Path") then
            if workspace["Only One Path"].mapn.Value == "" then
                topos(28.2, 85.8, -0.1)
            end
            if workspace["Only One Path"].mapn.Value == "Ritual" then
                topos(32.7396469, 105.910927, 12.1931028)
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
            topart(workspace["Shark Survival"].Goal.Goal)
        end
        if workspace:FindFirstChild("Laser Guidance") then
            workspace["Laser Guidance"].vlaser:Destroy()
            workspace["Laser Guidance"].hlaser:Destroy()
        end
        if workspace:FindFirstChild("Trial Traversing") then
            topart(workspace["Trial Traversing"].Goal.Goal)
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
            NEW'Part'{Parent = workspace['Four Corners'],Name = 'PLATFORM',Size = Vector3.new(17,1,17),Position = Vector3.new(-12.3369036, 69, -20.2035656),Anchored = true}
            topos(-12.3369036, 72.0999985, -20.2035656)
        end
        if workspace:FindFirstChild("Teamwork Trial") then
            topart(workspace["Teamwork Trial"].goal) -- finally
        end
        if workspace:FindFirstChild("Avalanche") then
            workspace.Avalanche.ChildAdded:connect(function(child)
                if child.Name == "snowball" then
                    child:Destroy()
                end
            end)
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
            -- please let this be the final version of this one
            local redblocks = workspace["Block Hunt"].DroppedRedBlocks
            local blueblocks = workspace["Block Hunt"].DroppedBlueBlocks
            for _,blues in pairs(blueblocks:GetChildren()) do
                blues.CFrame = plr.Character.HumanoidRootPart.CFrame
            end
            for _,reds in pairs(redblocks:GetChildren()) do
                reds.CFrame = plr.Character.HumanoidRootPart.CFrame
            end
        end
        if workspace:FindFirstChild("Outbreak") then
            topos(94.5852432, 72.6298981, 50.105278)
        end
        if workspace:FindFirstChild("Desert Dehydration") then
            -- if you arent in round and get the sodas with this
            -- you can use them to heal in other minigames ;)
            local colas = workspace["Desert Dehydration"].bloxycolas
            colas.DescendantAdded:connect(function(descendant)
                if descendant:IsA("Part") then
                    descendant.CFrame = plr.Character.HumanoidRootPart.CFrame
                end
            end)
        end
        if workspace:FindFirstChild("High-Rolling") then
            topart(workspace["High-Rolling"].Goal.Goal)
        end
        if workspace:FindFirstChild("Tile Takeover") then
            if plr.Character.Head.teamDot.ImageLabel.ImageColor3 == Color3.fromRGB(255, 55, 55) then
                repeat
                    wait(0.001)
                    for _,tiles in pairs(workspace["Tile Takeover"].tiles:GetChildren()) do
                        if tiles.Color ~= Color3.fromRGB(196, 40, 28) then
                            plr.Character.HumanoidRootPart.CFrame = tiles.CFrame + Vector3.new(0,2,0)
                        end
                    end
                until string.match(workspace.notification.Value,"wins")
                -- hopefully this will work
            end
            if plr.Character.Head.teamDot.ImageLabel.ImageColor3 == Color3.fromRGB(55, 55, 255) then
                repeat
                    wait(0.001)
                    for _,tiles in pairs(workspace["Tile Takeover"].tiles:GetChildren()) do
                        if tiles.Color ~= Color3.fromRGB(13, 105, 172) then
                            plr.Character.HumanoidRootPart.CFrame = tiles.CFrame + Vector3.new(0,2,0)
                        end
                    end
                until string.match(workspace.notification.Value,"wins")
            end
        end
        if workspace:FindFirstChild("Balcony Bolt") then
            -- more of a huge head start because of how rng it is
            -- will do for now
            topos(-721.234558, -7.84061432, -34.0784378)
        end
        if workspace:FindFirstChild("Conveyor Conundrum") then
            workspace["Conveyor Conundrum"].obsts.ChildAdded:connect(function(child)
                child:Destroy()
            end)
        end
        if workspace:FindFirstChild("Crumble Island") then
            NEW'Part'{Name = "PLATFORM",Parent = workspace["Crumble Island"],Size = Vector3.new(17,1,17),Position = Vector3.new(52.658844, 45.5821228, -50.265358),Anchored = true}
            topos(52.658844, 48.5821228, -50.265358)
        end
        if workspace:FindFirstChild("Gear Battle") then
            workspace["Gear Battle"].map.ignore.ChildAdded:connect(function(child)
                if child:IsA("Part") then
                    child.Position = plr.Character.HumanoidRootPart.Position
                end
            end)
        end
    end
end)
