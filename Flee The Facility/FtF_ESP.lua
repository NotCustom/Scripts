-- god this went through so many rewrites that its not even funny
-- eventually i just decided screw it and made it two different buttons
plr = game.Players.LocalPlayer
uis = game:GetService("UserInputService")
-- YES YOU CAN CUSTOMIZE IT
-- SOMETHING EVERYONE WANTS
ONKEY = "Q" -- no spaces if its something like "LeftControl"
BeastHighlight = Color3.fromRGB(200,0,0)
SurvivorHighlight = Color3.fromRGB(0,200,0)
HighlightTransparency = 0.5
-- actual functions

uis.InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode[ONKEY] then
        for _,them in pairs(game.Players:GetChildren()) do
            if them.Character:FindFirstChild("Hammer") and them.Name ~= plr.Name then
                -- BEAST HIGHLIGHT
                spawn(function()
                    if not them.Character:FindFirstChild("MDSHighlight") then
                        local file = Instance.new("Folder",them.Character)
                        file.Name = "MDSHighlight"
                        local bboard = Instance.new("BillboardGui",file)
                        local tag = Instance.new("TextLabel",bboard)
                        for _,limbs in pairs(them.Character:GetChildren()) do
                            if limbs:IsA("Part") then
                                local highlight = Instance.new("BoxHandleAdornment",file)
                                highlight.Name = "MDSHighlight_"..limbs.Name
                                highlight.Adornee = limbs
                                highlight.ZIndex = 10
                                highlight.AlwaysOnTop = true
                                highlight.Size = limbs.Size
                                highlight.Color3 = BeastHighlight
                                highlight.Transparency = HighlightTransparency
                            end
                        end
                        bboard.Adornee = them.Character.Head
                        bboard.Name = "MDSNametag_"..them.Name
                        bboard.Size = UDim2.new(0,100,0,150)
                        bboard.StudsOffset = Vector3.new(0,1,0)
                        bboard.AlwaysOnTop = true
		                tag.BackgroundTransparency = 1
        				tag.Position = UDim2.new(0, 0, 0, -50)
        				tag.Size = UDim2.new(0, 100, 0, 100)
        				tag.Font = Enum.Font.SourceSansSemibold
        				tag.TextSize = 20
        				tag.TextColor3 = Color3.new(245, 245, 245)
        				tag.TextStrokeTransparency = 0
        				tag.TextYAlignment = Enum.TextYAlignment.Bottom
        				tag.Text = "Name: "..them.Name.." - BEAST"
                    end
                end)
            elseif not them.Character:FindFirstChild("Hammer") and them.Name ~= plr.Name then
                -- SURVIVOR HIGHLIGHT
                spawn(function()
                    if not them.Character:FindFirstChild("MDSHighlight") then
                        local file = Instance.new("Folder",them.Character)
                        file.Name = "MDSHighlight"
                        local bboard = Instance.new("BillboardGui",file)
                        local tag = Instance.new("TextLabel",bboard)
                        for _,limbs in pairs(them.Character:GetChildren()) do
                            if limbs:IsA("Part") then
                                local highlight = Instance.new("BoxHandleAdornment",file)
                                highlight.Name = "MDSHighlight_"..limbs.Name
                                highlight.Adornee = limbs
                                highlight.ZIndex = 10
                                highlight.AlwaysOnTop = true
                                highlight.Size = limbs.Size
                                highlight.Color3 = SurvivorHighlight
                                highlight.Transparency = HighlightTransparency
                            end
                        end
                        bboard.Adornee = them.Character.Head
                        bboard.Name = "MDSNametag_"..them.Name
                        bboard.Size = UDim2.new(0,100,0,150)
                        bboard.StudsOffset = Vector3.new(0,1,0)
                        bboard.AlwaysOnTop = true
				        tag.BackgroundTransparency = 1
        				tag.Position = UDim2.new(0, 0, 0, -50)
        				tag.Size = UDim2.new(0, 100, 0, 100)
        				tag.Font = Enum.Font.SourceSansSemibold
        				tag.TextSize = 20
        				tag.TextColor3 = Color3.new(245, 245, 245)
        				tag.TextStrokeTransparency = 0
        				tag.TextYAlignment = Enum.TextYAlignment.Bottom
        				tag.Text = "Name: "..them.Name.." - SURVIVOR"
                    end
                end)
            end
        end
    end
end)
game.ReplicatedStorage.IsGameActive.Changed:connect(function(value)
    if value == false then
        for _,peoples in pairs(game.Players:GetChildren()) do
            if peoples.Character:FindFirstChild("MDSHighlight") then
                peoples.Character.MDSHighlight:Destroy()
                -- finally !
            end
        end
    end
end)
