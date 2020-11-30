-- 09:20:15 PM - [itsMechronicalMega]: sowwy custom~kun...
-- please never call me this again
uis = game:GetService("UserInputService")
plr = game.Players.LocalPlayer
key = "Q" -- do i have to explain at this point
function topart(object)
    -- You cant teleport anymore, so just teleport it to you lol
    object.CFrame = plr.Character.HumanoidRootPart.CFrame
end
function ping(Header,Msg)
    game.StarterGui:SetCore("SendNotification", {
        Title = Header,
        Text = Msg,
        Duration = 4
    })
end

uis.InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode[key] then
        if workspace:FindFirstChild("Manic Mining") then
            local mine = workspace["Manic Mining"]
            for _,child in pairs(mine:GetChildren()) do
                if child.Name == "dirt" or child.Name == "dirts" then
                    child:Destroy()
                end
            end
        end
        if workspace:FindFirstChild("Only One Path") then
            topart(workspace["Only One Path"].Goal.Goal)
        end
        if workspace:FindFirstChild("Hedge Way Out") then
            workspace["Hedge Way Out"].hedges:Destroy()
        end
        if workspace:FindFirstChild("Lane Jumping") then
            topart(workspace["Lane Jumping"].Goal.Goal)
        end
        if workspace:FindFirstChild("Penguin Pushover") then
        	workspace["Penguin Pushover"].penguins:Destroy()
        end
        if workspace:FindFirstChild("Bullet Evasion") then
        	workspace["Bullet Evasion"].bullets:Destroy()
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
        if workspace:FindFirstChild("Crystal Clear") then
            local igems = workspace["Crystal Clear"].igems
            local hasgem = false
            igems.ChildAdded:connect(function(child)
                if hasgem == false then
                   topart(child)
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
        if workspace:FindFirstChild("Just Jump") then
           workspace["Just Jump"].map.rope:Destroy() 
        end
        if workspace:FindFirstChild("Teamwork Trial") then
            topart(workspace["Teamwork Trial"].goal) -- finally
        end
        if workspace:FindFirstChild("Avalanche") then
            workspace.Avalanche.ChildAdded:connect(function(child)
                if child.Name == "snowball" then
                    child.Size = Vector3.new(0,0,0)
                    -- cant delete it, that gets noticed 
                end
            end)
        end
        if workspace:FindFirstChild("Compactor Crash") then
            workspace["Compactor Crash"].crusher:Destroy()
        end
        if workspace:FindFirstChild("Hard-Pressed") then
            workspace["Hard-Pressed"].map.presses:Destroy()
        end
        if workspace:FindFirstChild("Mechanical Mayhem") then
            workspace["Mechanical Mayhem"].map.turn:Destroy()
        end
        if workspace:FindFirstChild("Block Hunt") then
            -- Final rewrite @ 30.7.2020
            local redblocks = workspace["Block Hunt"].DroppedRedBlocks
            local blueblocks = workspace["Block Hunt"].DroppedBlueBlocks
            if plr.Character.Head.teamDot.ImageLabel.ImageColor3 == Color3.fromRGB(55,55,255) then
                for _,reds in pairs(redblocks:GetChildren()) do
                    reds.CFrame = plr.Character.HumanoidRootPart.CFrame
                end
            end
            if plr.Character.Head.teamDot.ImageLabel.ImageColor3 == Color3.fromRGB(255,55,55) then
                for _,blues in pairs(blueblocks:GetChildren()) do
                    blues.CFrame = plr.Character.HumanoidRootPart.CFrame
                end
            end
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
                    wait(0.00001)
                    for _,tiles in pairs(workspace["Tile Takeover"].tiles:GetChildren()) do
                        if tiles.Color ~= Color3.fromRGB(196, 40, 28) then
                            topart(tiles)
                        end
                    end
                until string.match(workspace.notification.Value,"wins")
                -- hopefully this will work
            end
            if plr.Character.Head.teamDot.ImageLabel.ImageColor3 == Color3.fromRGB(55, 55, 255) then
                repeat
                    wait(0.00001)
                    for _,tiles in pairs(workspace["Tile Takeover"].tiles:GetChildren()) do
                        if tiles.Color ~= Color3.fromRGB(13, 105, 172) then
                            topart(tiles)
                        end
                    end
                until string.match(workspace.notification.Value,"wins")
            end
        end
        if workspace:FindFirstChild("Conveyor Conundrum") then
            workspace["Conveyor Conundrum"].obsts.ChildAdded:connect(function(child)
                child:Destroy()
            end)
        end
        if workspace:FindFirstChild("Gear Battle") then
            workspace["Gear Battle"].map.ignore.ChildAdded:connect(function(child)
                if child:IsA("Part") then
                    child.CFrame = plr.Character.HumanoidRootPart.CFrame
                end
            end)
        end
        if workspace:FindFirstChild("Haunted Hallways") then
            topart(workspace["Haunted Hallways"].Goal.Goal)
        end
        if workspace:FindFirstChild("Castle Climb") then
            topart(workspace["Castle Climb"].Goal)
        end
        if workspace:FindFirstChild("Spiky Spinner") then
            workspace["Spiky Spinner"].SpikySpinner:Destroy()
        end
        if workspace:FindFirstChild("Protect the Statue") then
            for _,tnts in pairs(workspace["Protect the Statue"].tnts:GetChildren()) do
                tnts.ChildAdded:connect(function(child)
                    if child.Name == "nfusep" then
                        topart(child)
                    end
                end)
            end
        end
        if workspace:FindFirstChild("Crag Climber") then
            topart(workspace["Crag Clamber"].Goal)
        end
        if workspace:FindFirstChild("Spiral Ascent") then
            workspace["Spiral Ascent"].FinishPart.RemoteFunction:InvokeServer()
            -- aha, you fools !
        end
    end
end)
