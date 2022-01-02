uis = game:GetService("UserInputService")
Key = "Q"
HighlightColour = Color3.new(200,0,0) -- Highlight colour for computers
HLTransparency = 0.5 -- How visible highlight is (0 = Solid Colour, 1 = Invisible)
-- Main stuff
uis.InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode[Key] then
        local map = workspace:FindFirstChild(tostring(game.ReplicatedStorage.CurrentMap.Value))
		if map then
            spawn(function()
                for _,stuffs in pairs(map:GetChildren()) do
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
end)
while true do -- adjust if needed
    if game.ReplicatedStorage.IsGameActive.Value == true then
        local cmap = workspace:FindFirstChild(tostring(game.ReplicatedStorage.CurrentMap.Value))
		if cmap then
			for _,stuff in pairs(cmap:GetChildren()) do
				if stuff.Name == "ComputerTable" then
					if stuff.Screen.Color == Color3.fromRGB(40, 127, 71) then
						if stuff:FindFirstChild("MDSHighlight") then
							stuff.MDSHighlight:Destroy()
						end
					end
				end
			end
		end
	game.ReplicatedStorage.RemoteEvent:FireServer("SetPlayerMinigameResult", true)
    end
	wait()
end
