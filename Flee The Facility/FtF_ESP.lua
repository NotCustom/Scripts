-- god this went through so many rewrites that its not even funny
plr = game.Players.LocalPlayer
uis = game:GetService("UserInputService")
-- YES YOU CAN CUSTOMIZE IT
-- SOMETHING EVERYONE WANTS
Key = "Q" -- no spaces if its something like "LeftControl"
BeastHighlight = Color3.fromRGB(200,0,0)
SurvivorHighlight = Color3.fromRGB(0,200,0)
HighlightTransparency = 0.5
-- actual functions
function Highlight(role, folderloc, thefunny)
    spawn(function()
        if not folderloc:FindFirstChild("MDSHighlight") then
            local file = Instance.new("Folder",folderloc)
            file.Name = "MDSHighlight"
            local bboard = Instance.new("BillboardGui",file)
            local tag = Instance.new("TextLabel",bboard)
            for _,limbs in pairs(folderloc.Character:GetChildren()) do
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
            tag.Text = "Name: "..thefunny.Name.." - "..role
        end
    end)
end
uis.InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode[Key] then
        if game.ReplicatedStorage.IsGameActive.Value == true then
            for _,them in pairs(game.Players:GetChildren()) do
                if them.Character:FindFirstChild("Hammer") and them.Name ~= plr.Name then
                    -- BEAST HIGHLIGHT
                    Highlight("Beast", them.Character, them)
                elseif not them.Character:FindFirstChild("Hammer") and them.Name ~= plr.Name then
                    -- SURVIVOR HIGHLIGHT
                    Highlight("Survivor", them.Character, them)
                end
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
