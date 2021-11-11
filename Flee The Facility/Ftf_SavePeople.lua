plr = game.Players.LocalPlayer
uis = game:GetService("UserInputService")
Key = "X"
Map = game.ReplicatedStorage.CurrentMap.Value

uis.InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode[Key] then 
        local pos = {}
        local map = workspace:FindFirstChild(Map)
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