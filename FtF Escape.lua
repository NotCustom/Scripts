plr = game.Players.LocalPlayer
uis = game:GetService("UserInputService")
beast = false 
function isBeast() -- just a check for minor issues
    if plr.Character:FindFirstChild("Hammer") then
        beast = true
    else
        beast = false
    end
end
uis.InputBegan:connect(function(input)
    isBeast()
    if input.KeyCode == Enum.KeyCode.Q and beast == false then
        if workspace:FindFirstChild("Facility_0 by MrWindy") then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(80.490303, 4.99999857, 30.5027313)
        end
        if workspace:FindFirstChild("Homestead by MrWindy") and beast == false then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(302.297791, 3.99999928, 104.47834)
        end
        if workspace:FindFirstChild("Abandoned Facility by iiGalaxyKoala, Vexhins, and cyrda") and beast == false then
           plr.Character.HumanoidRootPart.CFrame = CFrame.new(77.0655212, 33.1999969, 334.399933) 
        end
        if workspace:FindFirstChild("Abandoned Prison by AtomixKing and Duck_Ify") and beast == false then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(119.481964, 5.48816061, 249.139297)
        end
        if workspace:FindFirstChild("Airport by deadlybones28") and beast == false then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(271.6698, 5.10003901, 95.1082077)
        end
    end
end)
print("Loaded! FtF Escape by Custom")
