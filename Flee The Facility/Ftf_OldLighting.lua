game.Lighting.Atmosphere:Destroy()
game.Lighting.DepthOfField.Enabled = false

function setlighting(set)
    if set == 1 then
        game.Lighting.FogEnd = 70
        game.Lighting.FogStart = 0
        game.Lighting.ExposureCompensation = -1
    end
    if set == 0 then
        game.Lighting.FogEnd = math.huge
        game.Lighting.FogStart = 10
        game.Lighting.ExposureCompensation = 0
    end
end

game.ReplicatedStorage.GameStatus.Changed:connect(function(value)
    if string.match(value,"GAME OVER") then
        setlighting(0)
    end
    if string.match(value,"15 SECOND HEAD START") then  
        setlighting(1)
    end
end)