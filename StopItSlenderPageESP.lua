-- Stop it Slender Page Highlight
Key = "Q"
game:GetService("UserInputService").InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode[Key] then
        local map = workspace:FindFirstChild("MAP")
        if map then
            for _,pages in pairs(map.Pages:GetChildren()) do    
                if pages:IsA("Part") then
                    local highlight = Instance.new("BoxHandleAdornment",pages)
                    highlight.Name = "SHHighlight"
                    highlight.Adornee = pages
                    highlight.ZIndex = 10
                    highlight.AlwaysOnTop = true
                    highlight.Size = pages.Size
                    highlight.Color3 = Color3.fromRGB(255,27,100)
                    highlight.Transparency = 0.3
                end
            end
            local hpagehighlight = Instance.new("BoxHandleAdornment",map.HPageSpawns.HPageSpawn)
            hpagehighlight.Name = "SHHighlight"
            hpagehighlight.Adornee = map.HPageSpawns.HPageSpawn
            hpagehighlight.ZIndex = 10
            hpagehighlight.AlwaysOnTop = true
            hpagehighlight.Size = map.HPageSpawns.HPageSpawn.Size
            hpagehighlight.Color3 = Color3.fromRGB(255,27,100)
            hpagehighlight.Transparency = 0.3
        end
    end
end)