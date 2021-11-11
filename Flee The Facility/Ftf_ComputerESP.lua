uis = game:GetService("UserInputService")
Key = "Q"
HighlightColour = Color3.new(200,0,0) -- Highlight colour for computers
HLTransparency = 0.5 -- How visible highlight is (0 = Solid Colour, 1 = Invisible)
Map = game.ReplicatedStorage.CurrentMap.Value
-- Main stuff
uis.InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode[Key] then
        local map = workspace:FindFirstChild(Map)
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
                            stuffs.Screen:GetPropertyChangedSignal("Color"):connect(function(value)
                                if value == Color3.fromRGB(40, 127, 71) then
                                    stuff.MDSHighlight:Destroy()
                                end
                            end)
                        end
                    end
                end
            end)
        end
    end
end)