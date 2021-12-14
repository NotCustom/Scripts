-- i have no clue why vscode had a seizure last time i tried to upload this
-- :hollow:
plr = game.Players.LocalPlayer
uis = game:GetService("UserInputService")
Key = "Q"
BeastHighlight = Color3.fromRGB(200,0,0)
SurvivorHighlight = Color3.fromRGB(0,200,0)
HighlightTransparency = 0.5
agony = false

function Highlight(role, thefunny)
    spawn(function()
        if not game.CoreGui.EndUserLicenseAgreement:FindFirstChild("E_Highlight_"..thefunny.Name) then
            local file = Instance.new("Folder",game.CoreGui.EndUserLicenseAgreement)
            file.Name = "E_Highlight_"..thefunny.Name
            local bboard = Instance.new("BillboardGui",file)
            local tag = Instance.new("TextLabel",bboard)
            for _,limbs in pairs(thefunny:GetChildren()) do
                if limbs:IsA("Part") then
                    local highlight = Instance.new("BoxHandleAdornment",file)
                    highlight.Name = "EHl_"..limbs.Name
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
        if not agony then
            agony = true
            if game.ReplicatedStorage.IsGameActive.Value == true then
                for _,them in pairs(game.Players:GetChildren()) do
                    if them.Character:FindFirstChild("Hammer") and them.Name ~= plr.Name then
                        Highlight("Beast", them.Character, them)
                    elseif not them.Character:FindFirstChild("Hammer") and them.Name ~= plr.Name then
                        Highlight("Survivor", them.Character, them)
                    end
                end
            end
        else
            agony = false
            game.CoreGui.EndUserLicenseAgreement:ClearAllChildren()
        end
    end
end)
game.ReplicatedStorage.IsGameActive.Changed:connect(function(value)
    if value == false then
        game.CoreGui.EndUserLicenseAgreement:ClearAllChildren()
    end
end)
