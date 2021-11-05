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
function Highlight(obj)
    local highlightt = Instance.new("BoxHandleAdornment", obj)
    highlightt.Name = "trol"
    highlightt.Adornee = obj
    highlightt.ZIndex = 10
    highlightt.AlwaysOnTop = true
    highlightt.Size = obj.Size
    highlightt.Color3 = Color3.fromRGB(255,27,100)
    highlightt.Transparency = 0.3
end
game:GetService("UserInputService").InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode[PageKey] then
        local map = workspace:FindFirstChild("MAP")
        if map then
            spawn(function()
                for _,pages in pairs(map.Pages:GetChildren()) do    
                    if pages:IsA("Part") then
                        if not pages:FindFirstChild("trol") then
                            Highlight(pages)
                        end
                    end
                end
                if not map.HPageSpawns.HPageSpawn:FindFirstChild("trol") then
                    Highlight(map.HPageSpawns.HPageSpawn)
                end
            end)
        end
    end
    if input.KeyCode == Enum.KeyCode[HGenKey] then
        local map = workspace:FindFirstChild("MAP")
        local generators = map.GENS
        if map then
            spawn(function()
                for _,gens in pairs(generators:GetChildren()) do
                    if gens.GLOW.On.Visible == false then
                        Highlight(gens)
                    end
                end
            end)
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