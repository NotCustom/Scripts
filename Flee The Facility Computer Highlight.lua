-- If you're using FtF Escape with this, go to Line 4 and change "Q" to "E"
uis = game:GetService("UserInputService")
uis.InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode.Q then
        if workspace:FindFirstChild("Facility_0 by MrWindy") then
           for _,child in pairs(workspace["Facility_0 by MrWindy"]:GetChildren()) do
               if child.Name == "ComputerTable" then
                    local highlight = Instance.new("BoxHandleAdornment",child.BasePart)                        highlight.Name = ":)"
                    highlight.Adornee = child.BasePart
                    highlight.AlwaysOnTop = true
                    highlight.ZIndex = 0
                    highlight.SizeRelativeOffset = Vector3.new(0, 0.5, 0)
                    highlight.Transparency = 0.3
                    highlight.Color = BrickColor.new("Institutional White")
                end
            end
        end
        if workspace:FindFirstChild("Homestead by MrWindy") then
           for _,child in pairs(workspace["Homestead by MrWindy"]:GetChildren()) do
               if child.Name == "ComputerTable" then
                    local highlight = Instance.new("BoxHandleAdornment",child.BasePart)                        highlight.Name = ":)"
                    highlight.Adornee = child.BasePart
                    highlight.AlwaysOnTop = true
                    highlight.ZIndex = 0
                    highlight.SizeRelativeOffset = Vector3.new(0, 0.5, 0)
                    highlight.Transparency = 0.3
                    highlight.Color = BrickColor.new("Institutional white")
                end
            end
        end
        if workspace:FindFirstChild("Abandoned Facility by iiGalaxyKoala, Vexhins, and cyrda") then
           for _,child in pairs(workspace["Abandoned Facility by iiGalaxyKoala, Vexhins, and cyrda"]:GetChildren()) do
               if child.Name == "ComputerTable" then
                    local highlight = Instance.new("BoxHandleAdornment",child.BasePart)                        highlight.Name = ":)"
                    highlight.Adornee = child.BasePart
                    highlight.AlwaysOnTop = true
                    highlight.ZIndex = 0
                    highlight.SizeRelativeOffset = Vector3.new(0, 0.5, 0)
                    highlight.Transparency = 0.3
                    highlight.Color = BrickColor.new("Institutional white")
                end
            end
        end
        if workspace:FindFirstChild("Abandoned Prison by AtomixKing and Duck_Ify") then
           for _,child in pairs(workspace["Abandoned Prison by AtomixKing and Duck_Ify"]:GetChildren()) do
               if child.Name == "ComputerTable" then
                    local highlight = Instance.new("BoxHandleAdornment",child.BasePart)                        highlight.Name = ":)"
                    highlight.Adornee = child.BasePart
                    highlight.AlwaysOnTop = true
                    highlight.ZIndex = 0
                    highlight.SizeRelativeOffset = Vector3.new(0, 0.5, 0)
                    highlight.Transparency = 0.3
                    highlight.Color = BrickColor.new("Institutional white")
                end
            end
        end
        if workspace:FindFirstChild("Airport by deadlybones28") then
           for _,child in pairs(workspace["Airport by deadlybones28"]:GetChildren()) do
               if child.Name == "ComputerTable" then
                    local highlight = Instance.new("BoxHandleAdornment",child.BasePart)                        highlight.Name = ":)"
                    highlight.Adornee = child.BasePart
                    highlight.AlwaysOnTop = true
                    highlight.ZIndex = 0
                    highlight.SizeRelativeOffset = Vector3.new(0, 0.5, 0)
                    highlight.Transparency = 0.3
                    highlight.Color = BrickColor.new("Institutional white")
                end
            end
        end
    end
end)
print("Loaded! Flee the Facility Computer ESP by Custom\nMessage me @Custom#5556 if any issues")