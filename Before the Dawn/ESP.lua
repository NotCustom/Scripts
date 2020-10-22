local key = "X" -- whatever key you like
local colour = Color3.new(250,250,250) -- highlight colour | I recommend light ones like white
local transparency = 0.3 -- 1 is completely invisible, 0 is solid
local tags = false -- nametag for what slasher(*the thing cough cough*)
game:GetService("UserInputService").InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode[key] then 
        local slasher
        for _,slashers in pairs(workspace.main.killers:GetChildren()) do
            if workspace:FindFirstChild(tostring(slashers.Name)) then
                slasher = workspace[slashers.Name] 
            end
        end
        if not slasher:FindFirstChild("SenHighlight") then
            spawn(function()
                local file = Instance.new("Folder",slasher)
                file.Name = "SenHighlight"
                for _,limbs in pairs(slasher:GetChildren()) do
                    if limbs.Name == "Right Arm" or limbs.Name == "Right Leg" or limbs.Name == "Head" or limbs.Name == "Torso" or limbs.Name == "HumanoidRootPart" or limbs.Name == "Left Leg" or limbs.Name == "Left Arm" then
                        -- slashers have a bunch of other parts, so this just highlights only the regular body parts
                        local highlight = Instance.new("BoxHandleAdornment",file)
                        highlight.Name = "SenHighlight_"..limbs.Name
                        highlight.Adornee = limbs
                        highlight.ZIndex = 10
                        highlight.AlwaysOnTop = true
                        highlight.Size = limbs.Size
                        highlight.Color3 = colour
                        highlight.Transparency = transparency
                        if tags == true then
                            local board = Instance.new("BillboardGui",slasher.Head)
                            local tag = Instance.new("TextLabel",board)
                            board.Adornee = slasher.Head
                            board.Name = "SenNametag_"..slasher.Name
                            board.Size = UDim2.new(0,100,0,150)
                            board.StudsOffset = Vector3.new(0,1,0)
                            board.AlwaysOnTop = true
                            tag.BackgroundTransparency = 1
                            tag.Position = UDim2.new(0, 0, 0, -50)
                            tag.Size = UDim2.new(0, 100, 0, 100)
                            tag.Font = Enum.Font.SourceSansSemibold
                            tag.TextSize = 20
                            tag.TextColor3 = Color3.new(245, 245, 245)
                            tag.TextStrokeTransparency = 0
                            tag.TextYAlignment = Enum.TextYAlignment.Bottom
                            tag.Text = slasher.Name
                        end
                    end
                end
            end)
        end
    end
end)
