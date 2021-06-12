-- The issue with testing these is I have to wait for the minigame to be chosen
-- And I don't feel like shilling out 14 robux just to choose it myself

plr = game.Players.LocalPlayer
key = "Q"
function topart(object)
    object.CFrame = plr.Character.HumanoidRootPart.CFrame
end

game:GetService("UserInputService").InputBegan:connect(function(input)
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
            if workspace["Teamwork Trial"].mapn.Value == "Gulch" then
                if plr.Character.Head.teamDot.ImageLabel.ImageColor3 == Color3.fromRGB(55,55,255) then
                    topart(workspace["Teamwork Trial"].bgoal)
                elseif plr.Character.Head.teamDot.ImageLabel.ImageColor3 == Color3.fromRGB(255,55,55) then
                    topart(workspace["Teamwork Trial"].rgoal)
                end
            else -- idk dont ask
                topart(workspace["Teamwork Trial"].goal)
            end
        end
        if workspace:FindFirstChild("Avalanche") then
            workspace.Avalanche.ChildAdded:connect(function(child)
                if child.Name == "snowball" then
                    child.Size = Vector3.new(0,0,0)
                end
            end)
        end
        if workspace:FindFirstChild("Compactor Crash") then
            workspace["Compactor Crash"].crusher:Destroy()
        end
        if workspace:FindFirstChild("Hard-Pressed") then
            workspace["Hard-Pressed"].map.presses:Destroy()
        end
        if workspace:FindFirstChild("Block Hunt") then
            local redblocks = workspace["Block Hunt"].DroppedRedBlocks
            local blueblocks = workspace["Block Hunt"].DroppedBlueBlocks
            if plr.Character.Head.teamDot.ImageLabel.ImageColor3 == Color3.fromRGB(55,55,255) then
                for _,reds in pairs(redblocks:GetChildren()) do
                    topart(reds)
                end
            end
            if plr.Character.Head.teamDot.ImageLabel.ImageColor3 == Color3.fromRGB(255,55,55) then
                for _,blues in pairs(blueblocks:GetChildren()) do
                    topart(blues)
                end
            end
        end
        if workspace:FindFirstChild("Desert Dehydration") then
            -- you can use them to heal in other games lol
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
            -- YES I REALISE I BROKE THIS IM JUST NOT IN THE MOOD TO FIX IT :(
            for _,tiles in pairs(workspace["Tile Takeover"]:GetChildren()) do
                if plr.Character.Head.teamDot.ImageLabel.ImageColor3 == Color3.fromRGB(255, 55, 55) then
                    repeat
                        wait(0.00001) -- Feel free to adjust these
                        if tiles.Color ~= Color3.fromRGB(196, 40, 28) then
                            local pos = tiles.CFrame -- Slight change, no clue if it works
                            tiles.CanCollide = false
                            topart(tiles)
                            tiles.CanCollide = true
                            tiles.CFrame = pos
                            pos = nil
                        end
                    until string.match(workspace.notification.Value,"wins")
                end
                if plr.Character.Head.teamDot.ImageLabel.ImageColor3 == Color3.fromRGB(55, 55, 255) then
                    repeat
                        wait(0.00001)
                        if tiles.Color ~= Color3.fromRGB(13, 105, 172) then
                            local pos = tiles.CFrame
                            tiles.CanCollide = false
                            topart(tiles)
                            tiles.CanCollide = true
                            tiles.CFrame = pos
                            pos = nil
                        end
                    until string.match(workspace.notification.Value,"wins")
                end
            end
        end
        if workspace:FindFirstChild("Conveyor Conundrum") then
            workspace["Conveyor Conundrum"].obsts.ChildAdded:connect(function(child)
                child:ClearAllChildren()
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
        if workspace:FindFirstChild("Crag Climber") then
            topart(workspace["Crag Clamber"].Goal)
        end
        if workspace:FindFirstChild("Spiral Ascent") then
            workspace["Spiral Ascent"].FinishPart.RemoteFunction:InvokeServer()
            -- aha, you fools !
        end
        if workspace:FindFirstChild("Blow Dryer Battle") then
            plr.Character:WaitForChild("BlowDryer").Handle.Anchored = true
            while wait(1) do
                if string.match(workspace.notification.Value,"wins") then
                    plr.Character.BlowDryer.Handle.Anchored = true
                end
            end
        end
        if workspace:FindFirstChild("Bombs Away") then
            workspace["Bombs Away"].bombs.ChildAdded:connect(function(child)
                if child.Name == "bomb" then
                    child:Destroy()
                end
            end)
        end
        if workspace:FindFirstChild("Aztec Adventure") then
            topart(workspace["Aztec Adventure"].Goal.Goal) 
        end
        if workspace:FindFirstChild("Hurdle Hurry") then
            topart(workspace["Hurdle Hurry"].Goal.Goal) 
        end
        if workspace:FindFirstChild("Rampant Rhythms") then
            workspace["Rampant Rhythms"].SubmitResult:FireServer(math.huge) -- Really ?
        end
        if workspace:FindFirstChild("Flee the Facility") then
            topart(workspace["Flee the Facility"].Exit.Part)
        end
        if workspace:FindFirstChild("Turntable Scurry") then
            topart(workspace["Turntable Scurry"].Centre)
        end
        if workspace:FindFirstChild("Cloud Control") then
            local cloudfolder = workspace["Cloud Control"].tiles
            while wait(0.5) do
                for _,clouds in pairs(cloudfolder:GetChildren()) do    
                    if clouds.Color ~= plr.Character.Head.teamDot.ImageLabel.ImageColor3 then
                        topart(clouds)
                    end
                end
            end
        end
        if workspace:FindFirstChild("Round Race") then
            topart(workspace["Round Race"].Goal.Goal)
        end
        if workspace:FindFirstChild("Crumble Island") or workspace:FindFirstChild("Toxic Reactions") or workspace:FindFirstChild("Teetering Turmoil") or workspace:FindFirstChild("Cliffside Chaos") then
            -- Doesn't work : To be revised 
            --[[plr.Backpack:FindFirstChildWhichIsA("Tool").Parent = plr.Character
            local tool = plr.Character:FindFirstChildWhichIsA("Tool").Handle.Anchored = true -- I'll be super surprised if this even works
            tool.Unequipped:connect(function()
                tool.Handle.Anchored = false
            end)]]--
        end
        if workspace:FindFirstChild("Cake Delivery") then
            -- Making something for this is an actual pain, uploaded for now | I'll work on this later
        end
        if workspace:FindFirstChild("Shock Absorbers") then
            for _,boxes in pairs (workspace["Shock Absorbers"].boxes:GetChildren()) do
                if boxes.plat.pname.Value == plr.Name then
                    boxes.leftbutton.ChildAdded:connect(function()
                        plr.Character.Humanoid:MoveTo(boxes.leftbutton)
                    end)
                    boxes.rightbutton.ChildAdded:connect(function()
                        plr.Character.Humanoid:MoveTo(boxes.rightbutton)
                    end)
                    boxes.topbutton.ChildAdded:connect(function()
                        -- No genuine clue if this one works
                        plr.Character.Humanoid:MoveTo(boxes.topbutton)
                        plr.Character.Humanoid.Jump.Value = true
                    end)
                end
            end
        end
        if workspace:FindFirstChild("Lights On") then
            workspace["Lights On"].schedule:ClearAllChildren()
        end
        if workspace:FindFirstChild("Bowling Bustle") then
            workspace["Bowling Bustle"].ChildAdded:connect(function(child)
                if child.Name == "Ball" then
                    child:Destroy()
                end
            end)
        end
        if workspace:FindFirstChild("Mechanical Mayhem") then
            workspace["Mechanical Mayhem"].map.cogs:Destroy()
        end
        if workspace:FindFirstChild("Flintlock Fight") then
            -- Not sure what else I can really do for this
            -- Highlight the enemy for now
            for _,plrs in pairs(game.Players:GetChildren()) do
                if plrs.Character.Head.teamDot.ImageLabel.ImageColor3 ~= plr.Character.Head.teamDot.ImageLabel.ImageColor3 then
                    for _,limbs in pairs(plrs.Character:GetChildren()) do
                        if limbs:IsA("Part") and limbs.Name ~= "HumanoidRootPart" then
                            local highlight = Instance.new("BoxHandleAdornment",limbs)
                            highlight.Name = "NCHighlight_"..limbs.Name
                            highlight.Adornee = limbs
                            highlight.ZIndex = 10
                            highlight.AlwaysOnTop = true
                            highlight.Size = limbs.Size
                            highlight.Color3 = plrs.Character.Head.teamDot.ImageLabel.ImageColor3
                            highlight.Transparency = 0.5
                        end
                    end
                end
            end
        end
    end
end)
