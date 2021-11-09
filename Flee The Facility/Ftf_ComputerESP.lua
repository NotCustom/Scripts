uis = game:GetService("UserInputService")
Key = "Q"
HighlightColour = Color3.new(200,0,0) -- Highlight colour for computers
HLTransparency = 0.5 -- How visible highlight is (0 = Solid Colour, 1 = Invisible)
-- Main stuff
function update()
    local cmap = workspace:FindFirstChild("Facility_0 by MrWindy") or workspace:FindFirstChild("Abandoned Prison by AtomixKing and Duck_Ify") or workspace:FindFirstChild("Abandoned Facility by iiGalaxyKoala, Vexhins, and cyrda") or workspace:FindFirstChild("Airport by deadlybones28") or workspace:FindFirstChild("Homestead by MrWindy") or workspace:FindFirstChild("The Library by Drainhp") 
    if cmap then
        for _,stuff in pairs(cmap:GetChildren()) do
            if stuff.Name == "ComputerTable" then
                if stuff.Screen.Color == Color3.fromRGB(40, 127, 71) then
                    if stuff:FindFirstChild("MDSHighlight") then
                        stuff.MDSHighlight:Destroy()
                    end
                end
            end
        end
    end
end
uis.InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode[Key] then
        local map = workspace:FindFirstChild("Facility_0 by MrWindy") or workspace:FindFirstChild("Abandoned Prison by AtomixKing and Duck_Ify") or workspace:FindFirstChild("Abandoned Facility by iiGalaxyKoala, Vexhins, and cyrda") or workspace:FindFirstChild("Airport by deadlybones28") or workspace:FindFirstChild("Homestead by MrWindy") or workspace:FindFirstChild("The Library by Drainhp") 
        if map then
            spawn(function()
                for _,stuffs in pairs(map:GetChildren()) do
                    if stuffs.Name == "ComputerTable" then
                        if stuffs.Screen.Color ~= Color3.fromRGB(40, 127, 71) then
                            if not stuffs:FindFirstChild("MDSHighlight") then
                                local highlight = Instance.new("BoxHandleAdornment",stuffs)
                                highlight.Name = "MDSHighlight"
                                highlight.Adornee = stuffs.BasePart
                                highlight.ZIndex = 10
                                highlight.AlwaysOnTop = true
                                highlight.Size = stuffs.BasePart.Size
                                highlight.Color3 = HighlightColour
                                highlight.Transparency = HLTransparency
                            end
                        end
                    end
                end
            end)
        end
    end
end)
while wait(15) do -- adjust if needed
    if game.ReplicatedStorage.IsGameActive.Value == true then
        update()
        -- "crafty" way to fix ESP not updating after exit was unlocked
        -- considered binding to RenderStepped but forgot how s u p e r fast it is
    end
end
