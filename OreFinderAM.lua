-- Highlights ores listed in the table, useful for finding specific things
-- Use _G.Add() and _G.Remove() to update the ore list instead of re-executing or rejoining the game
loadstring(game:HttpGet("https://raw.githubusercontent.com/NotCustom/Scripts/master/Resource/OreColourList.lua", true))() -- Loads my custom ore colour table

_G.ores = {
    "Antimatter",
    "Painite"
}
local settings = {
    HighlightTransparency = 0.5,
    Update = true
}
_G.Add = function(ore)
    table.insert(_G.ores, tostring(ore))
end)
_G.Remove = function(ore)
    table.remove(ore, table.find(ores, tostring(ore)))
end)
function Highlight(ore)
    local highlight = Instance.new("BoxHandleAdornment", ore)
    highlight.Adornee = ore
    highlight.AlwaysOnTop = true
    highlight.Color3 = _G.OreColours[ore.Name] 
    highlight.Name = "_HIGHLIGHT"
    highlight.Size = ore.Size
    highlight.Transparency = settings.HighlightTransparency
    highlight.ZIndex = 10
end

-- Main stuff

for _,oress in pairs(workspace.Mine:GetChildren()) do
    if table.find(_G.ores, oress.Name) then
        Highlight(oress)
    end
end
if settings.Update == true then
    workspace.Mine.ChildAdded:connect(function(child)
        if table.find(_G.ores, child.Name) then
            Highlight(child)
        end
    end)
end