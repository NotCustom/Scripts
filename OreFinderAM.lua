-- Highlights ores listed in the table, useful for finding specific things
update = false -- Should newly spawned ores be highlighted?
local ores = {
    "Antimatter",
    "Painite"
}
local settings = {
    HighlightTransparency = 0.5,
    HighlightColour = Color3.fromRGB(0, 0, 210)
}
function Highlight(ore)
    local highlight = Instance.new("BoxHandleAdornment", ore)
    highlight.Adornee = ore
    highlight.AlwaysOnTop = true
    highlight.Color3 = settings.HighlightColour
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
if update == true then
    workspace.Mine.ChildAdded:connect(function(child)
        if table.find(ores, child.Name) then
            Highlight(child)
        end
    end)
end