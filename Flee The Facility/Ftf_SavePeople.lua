local plr = game.Players.LocalPlayer
local uis = game:GetService("UserInputService")
Key = "X"
uis.InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode[Key] then 
        local pos = {}
        local map = workspace:FindFirstChild("Facility_0 by MrWindy") or workspace:FindFirstChild("Abandoned Prison by AtomixKing and Duck_Ify") or workspace:FindFirstChild("Abandoned Facility by iiGalaxyKoala, Vexhins, and cyrda") or workspace:FindFirstChild("Airport by deadlybones28") or workspace:FindFirstChild("Homestead by MrWindy") or workspace:FindFirstChild("The Library by Drainhp")
        if map then
            for _,things in pairs(map:GetChildren()) do
                if things.Name == "FreezePod" then
                    if things:FindFirstChild("PodTrigger") then
                        if things.PodTrigger.CapturedTorso.Value ~= nil then
                            table.insert(pos,things.PodTrigger.CFrame)
                            things.PodTrigger.CFrame = plr.Character.HumanoidRootPart.CFrame
                            wait(1)
                            things.PodTrigger.CFrame = pos[1]
                            pos = nil
                        end
                    end
                end
            end
        end
    end
end)
