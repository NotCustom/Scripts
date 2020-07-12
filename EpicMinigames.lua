-- got called a femboy in the discord vc today :pensive:
-- worst thing to ever happen to me
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
        end
        if workspace:FindFirstChild("One Way Out") then
            topos(28.2, 85.8, -0.1)
        end
        if workspace:FindFirstChild("Turntable Scurry") then
            topos(0, 115.4, 0)
        end
        if workspace:FindFirstChild("Expedition Sprint") then
            topos(50.0934715, 255.104126, -5.76367521)
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
        if workspace:FindFirstChild("Block Hunt") then
            local blue = workspace["Block Hunt"]:FindFirstChild("DroppedBlueBlocks")
            local red = workspace["Block Hunt"]:FindFirstChild("DroppedRedBlocks")
            local isblue = false
            local isred = false
            if plr.Character:FindFirstChild("RedBlock") and isred == false and isblue == false then
                isred = true
                ping("Modeus' BlockHunt","Wait for hunting to start and press Q")
            end
            if plr.Character:FindFirstChild("BlueBlock") and isred == false and isblue == false then
                isblue = true
                ping("Modeus' BlockHunt","Wait for hunting to start and press Q")
            end
            if isred == true and isblue == false then
                local bluechildren = blue:GetChildren()
                for _,blues in pairs(bluechildren) do
                   blues.CFrame = plr.Character.HumanoidRootPart.CFrame 
                end
            end
            if isred == false and isblue == true then
                local redchildren = red:GetChildren()
                for _,reds in pairs(redchildren) do
                   reds.CFrame = plr.Character.HumanoidRootPart.CFrame 
                end
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
            NEW'Part'{Parent = workspace["Revolution Cube"],Name = "PLATFORM",Size = Vector3.new(17,1,17),Position = CFrame.new()}
        end
        if workspace:FindFirstChild("Just Jump") then
           workspace["Just Jump"].map.rope:Destroy() 
        end
        if workspace:FindFirstChild("The Crusher") then
            NEW'Part'{Parent = workspace["The Crusher"],Name = "Platform",Size = Vector3.new(17,1,17),Position = CFrame.new(19.6044769, 98.766319, -128.549683)} 
        end
        if workspace:FindFirstChild("Uncertain Ground") then
            NEW'Part'{Parent = workspace["Uncertain Ground"],Name = "Platform",Size = Vector3.new(17,1,17),Position = CFrame.new(19.6044769, 98.766319, -128.549683)}
            topos(19.6044769, 98.766319, -128.549683)
        end
        if workspace:FindFirstChild("Cake Delivery") then
            -- no clue if this works
            cakenum = ""
            for _,stuffs in pairs(plr.Character:GetChildren()) do
                if stuffs:IsA("Tool") then
                    cakenum = stuffs.Name
                    toolhandle = stuffs.Handle
                end
            end
            wait(1)
            for _,map in pairs(workspace["Cake Delivery"]:GetChildren()) do
                if map:IsA("Part") then
                    for _,nums in pairs(map:GetChildren()) do
                        if nums:IsA("SurfaceGui") then
                            local txt = nums.TextLabel.Text
                            if string.match(txt,cakenum) then
                                toolhandle.CFrame = nums.Parent.CFrame
                            end
                        end
                    end
                end
            end
        end
        if workspace:FindFirstChild("Four Corners") then
            NEW'Part'{Parent = workspace['Four Corners'],Name = 'PLATFORM',Size = Vector3.new(17,1,17),Position = CFrame.new()}
            -- WIP
        end
    end
end)
