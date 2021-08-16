-- Highlights ores listed in the table, useful for finding specific things
loadstring(game:HttpGet("https://raw.githubusercontent.com/NotCustom/Scripts/master/Resource/OreColourList.lua", true))() -- Loads my custom ore colour table

local ores = {
    "Antimatter",
    "Painite"
}
local settings = {
    HighlightTransparency = 0.5,
    Update = true
}
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
    if table.find(ores, oress.Name) then
        Highlight(oress)
    end
end
if settings.Update == true then
    workspace.Mine.ChildAdded:connect(function(child)
        if table.find(ores, child.Name) then
            Highlight(child)
        end
    end)
end