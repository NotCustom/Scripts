local key = "X" -- whatever key you like
local colour = Color3.new(250,250,250) -- highlight colour | I recommend light ones like white
local transparency = 0.3 -- 1 is completely invisible, 0 is solid
game:GetService("UserInputService").InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode[key] then
        local slasher
        for _,slashers in pairs(workspace.main.killers:GetChildren()) do
            if workspace:FindFirstChild(tostring(slashers.Name)) then
                slasher = workspace[slashers.Name] 
            end
        end
        if not slasher:FindFirstChild("SenHighlight") then
            spawn(function()
                local file = Instance.new("Folder",slasher)
                file.Name = "SenHighlight"
                for _,limbs in pairs(slasher:GetChildren()) do
                    if limbs.Name == "Right Arm" or limbs.Name == "Right Leg" or limbs.Name == "Head" or limbs.Name == "Torso" or limbs.Name == "HumanoidRootPart" or limbs.Name == "Left Leg" or limbs.Name == "Left Arm" then
                        -- slashers have a bunch of other parts, so this just highlights only the regular body parts
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
            end)
        end
    end
end)