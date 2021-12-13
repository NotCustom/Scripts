-- mm yes a working bypass for the anti-noclip
-- not like you would use this to make it work on walls too, *right?* ;)
key = "C"
uis = game:GetService("UserInputService")
agony = false


uis.InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode[key] then
        if not agony then agony = true else agony = false end
        local map = tostring(game.ReplicatedStorage.CurrentMap.Value) -- i still hate ObjectValues
        if workspace:FindFirstChild(map) then
            for _,doors in pairs(workspace[map]:GetChildren()) do
                if doors.Name == "SingleDoor" or doors.Name == "DoubleDoor" then
                    for _,things in pairs(doors.Door:GetChildren()) do
                        if things:IsA("Part") and things.Name ~= "Hinge" then
                            -- stupid name thing prevents stupid ugly part from showing up
                            if agony then
                                things.CanCollide = false
                                things.Transparency = 0.5
                            else
                                things.CanCollide = true
                                things.Transparency = 0
                            end
                        end
                    end
                end
            end
        end
    end
end)