local key = "Z"
local colour = Color3.fromRGB(250,0,0)
local transparency = 0.3
game:GetService("UserInputService").InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode[key] then
        local slasher
        for _,slashers in pairs(workspace.main.killers:GetChildren()) do
            if workspace:FindFirstChild(tostring(slashers.Name)) then
                slasher = workspace[slashers.Name]
                -- ok thats funny
            end 
        end
        if slasher.Slasher.Value ~= game.Players.LocalPlayer.Name then
            spawn(function()
                for _,plrs in pairs(game.Players:GetChildren()) do
                    if plrs.Name ~= game.Players.LocalPlayer.Name then
                        if not plrs.Character:FindFirstChild("SenHighlight") then
                            local file = Instance.new("Folder",plrs.Character)
                            file.Name = "SenHighlight"
                            for _,limbs in pairs(plrs.Character:GetChildren()) do
                                if limbs:IsA("Part") then
                                    local highlight = Instance.new("BoxHandleAdornment",file)
                                    highlight.Name = "SenHighlight_"..limbs.Name
                                    highlight.Adornee = limbs
                                    highlight.ZIndex = 10
                                    highlight.AlwaysOnTop = true
                                    highlight.Size = limbs.Size
                                    highlight.Color3 = colour
                                    highlight.Transparency = transparency
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)