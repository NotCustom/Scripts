-- i have a backup of this in the event that it doesn't work
-- will test later
local plr = game.Players.LocalPlayer
local uis = game:GetService("UserInputService")
loadstring(game:HttpGet("https://raw.githubusercontent.com/NotCustom/Scripts/master/Resource/FtF_Maps.lua"))() -- summons the great old ones via table containing all the maps
Key = "X"
uis.InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode[Key] then 
        local pos = {}
        for _,map in pairs(_G.Maps) then
            if workspace:FindFirstChild(map) then
                for _,things in pairs(workspace[map]:GetChildren()) do
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
    end
end)
