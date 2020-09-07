-- did i mention you can change these?
PageKey = "Q"
HGenKey = "E"
ActGenKey = "X" -- Actives generators instead of highlighting them
-- still working on removing highlights for collected pages
function updateGens()
    if workspace:FindFirstChild("MAP") then
        for _,gens in pairs(workspace.MAP.GENS:GetChildren()) do
            if gens.GLOW.On.Visible == true then
                if gens:FindFirstChild("SHHighlight") then
                    gens.SHHighlight:Destroy()
                end
            end
        end
    end 
end
game:GetService("UserInputService").InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode[PageKey] then
        local map = workspace:FindFirstChild("MAP")
        if map then
            for _,pages in pairs(map.Pages:GetChildren()) do    
                if pages:IsA("Part") and pages:FindFirstChild("Decal") then
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
            if map.HPageSpawns.HPageSpawn:FindFirstChild("Decal") then
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
    end
    if input.KeyCode == Enum.KeyCode[HGenKey] then
        local map = workspace:FindFirstChild("MAP")
        local generators = map.GENS
        if map then
            for _,gens in pairs(generators:GetChildren()) do
                if gens.GLOW.On.Visible == false then
                    local highlight = Instance.new("BoxHandleAdornment",gens)
                    highlight.Name = "SHHighlight"
                    highlight.Adornee = gens.GENBASE
                    highlight.ZIndex = 10
                    highlight.AlwaysOnTop = true
                    highlight.Size = gens.GENBASE.Size
                    highlight.Color3 = Color3.fromRGB(255,27,100)
                    highlight.Transparency = 0.3
                end
            end
        end
    end
    if input.KeyCode == Enum.KeyCode[ActGenKey] then
        local map = workspace:FindFirstChild("MAP")
        local generators = map.GENS
        for _,gens in pairs(generators:GetDescendants()) do -- GetDescendants is easier in cases like this
            if gens:IsA("ClickDetector") then
                gens.MaxActivationDistance = math.huge
                fireclickdetector(gens)
            end
        end
    end
end)

while wait(15) do -- as always, feel free to adjust this
    updateGens()
end
