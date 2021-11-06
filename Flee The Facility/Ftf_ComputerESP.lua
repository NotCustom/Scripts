uis = game:GetService("UserInputService")
loadstring(game:HttpGet("https://raw.githubusercontent.com/NotCustom/Scripts/master/Resource/FtF_Maps.lua"))()
Key = "Q"
HighlightColour = Color3.new(200,0,0) -- Highlight colour for computers
HLTransparency = 0.5 -- How visible highlight is (0 = Solid Colour, 1 = Invisible)
-- Main stuff
function update()
    for _,maps in pairs(_G.Maps) do
        if workspace:FindFirstChild(maps) then
            for _,stuff in pairs(workspace[maps]:GetChildren()) do
                if stuff.Name == "ComputerTable" then
                    if stuff.Screen.Color == Color3.fromRGB(40, 127, 71) then
                        if stuff:FindFirstChild("MDSHighlight") then
                            stuff.MDSHighlight:Destroy()
                        end
                    end
                end
            end
        end
    end
end
uis.InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode[Key] then
        for _,maps in pairs(_G.Maps) do
            if workspace:FindFirstChild(maps) then
                spawn(function()
                    for _,stuffs in pairs(maps:GetChildren()) do
                        if stuffs.Name == "ComputerTable" then
                            if stuffs.Screen.Color ~= Color3.fromRGB(40, 127, 71) then
                                if not stuffs:FindFirstChild("MDSHighlight") then
                                    local highlight = Instance.new("BoxHandleAdornment",stuffs)
                                    highlight.Name = "MDSHighlight"
                                    highlight.Adornee = stuffs.BasePart
                                    highlight.ZIndex = 10
                                    highlight.AlwaysOnTop = true
                                    highlight.Size = stuffs.BasePart.Size
                                    highlight.Color3 = HighlightColour
                                    highlight.Transparency = HLTransparency
                                end
                            end
                        end
                    end
                end)
            end
        end
    end
end)
while wait(15) do -- adjust if needed
    if game.ReplicatedStorage.IsGameActive.Value == true then
        update()
        -- "crafty" way to fix ESP not updating after exit was unlocked
        -- considered binding to RenderStepped but forgot how s u p e r fast it is
    end
end
