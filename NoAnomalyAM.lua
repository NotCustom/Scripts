-- I hate the Anomaly in a similar way to how I hate the Xenomorph in Alien: Isolation
-- Unfortunately I can't solve the latter issue this easily :(
    
workspace.Camera.Anomaly:Destroy()
workspace.Camera.laserBeam:Destroy()
game.StarterPlayer.StarterCharacterScripts.AnomalyRunner:Destroy()
game:GetService("ReplicatedStorage").Anomaly:Destroy()
game.Players.LocalPlayer.Character:WaitForChild("AnomalyRunner"):Destroy()
