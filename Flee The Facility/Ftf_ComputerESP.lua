-- The usual//Settings
uis = game:GetService("UserInputService")
Key = "Q" -- yesyes you can change this
HighlightColour = Color3.new(200,0,0) -- Highlight colour for computers
HLTransparency = 0.5 -- How visible highlight is (0 = Solid Colour, 1 = Invisible)
-- Maps
FACILITY_0 = workspace:FindFirstChild("Facility_0 by MrWindy")
ABANDONED_PRISON = workspace:FindFirstChild("Abandoned Prison by AtomixKing and Duck_Ify")
ABANDONED_FACILITY = workspace:FindFirstChild("Abandoned Facility by iiGalaxyKoala, Vexhins, and cyrda")
HOMESTEAD = workspace:FindFirstChild("Homestead by MrWindy")
AIRPORT = workspace:FindFirstChild("Airport by deadlybones28")
-- Main stuff
function update()
    -- originally this was a YandereDev style, massive `if then else` statement
    -- luckily, "or" can be used in locals 
    local cmap = FACILITY_0 or ABANDONED_PRISON or ABANDONED_FACILITY or AIRPORT or HOMESTEAD
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
uis.InputBegan:connect(function(input) -- less atrocious coding
    if input.KeyCode == Enum.KeyCode[Key] then
        -- for some reason only 5 get highlighted even though theres 6 ??
        local map = FACILITY_0 or ABANDONED_PRISON or ABANDONED_FACILITY or AIRPORT or HOMESTEAD
        if map then
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
        end
    end
end)
game.ReplicatedStorage.ComputersLeft.Changed:connect(update)