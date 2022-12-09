local qe = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = qe.CreateLib("Animal Simulator script v Beta", "BloodTheme")
local w1 = Window:NewTab("Main")
local w2 = Window:NewTab("Local Player")
local w3 = Window:NewTab("Misc")
local w4 = Window:NewTab("Credits")
local s1 = w1:NewSection("Animal Simulator")
local s2 = w1:NewSection("Tp to some places")
local s3 = w4:NewSection("Dev: TS_Doomed(POMKA237 :sunglasses:)")
local s4 = w4:NewSection("Noob who help me: TS_DEATH(R0BL0XX1X2)")
local s5 = w3:NewSection("Misc")
local s6 = w2:NewSection("Movement")

s1:NewKeybind("Toggle UI", "Toggle UI", Enum.KeyCode.F, function()
	qe:ToggleUI()
end)

s1:NewButton("Free Fireball", "ButtonInfo", function()
    for i,v in pairs (game.Players:GetChildren()) do
    wait()
    for i,b in pairs (v.Backpack:GetChildren()) do
    b.Parent = game.Players.LocalPlayer.Backpack
    end
    end
end)

s1:NewToggle("AutofarmCoin", "Autofarm Coins", function(FarmCoins)
    autofarmcoins = FarmCoins
while wait(0.1) and autofarmcoins do
    game:GetService("ReplicatedStorage").Events.CoinEvent:FireServer()
end
end)

s1:NewToggle("Autofarm Dummy (Stay near dummy)", "Autopunch Dummy, need to stay near", function(FarmDummy)
    autofarmdummy = FarmDummy
    while wait(0.5) and autofarmdummy do
        
    end
end)

s1:NewToggle("Killaura", "Killaura", function(KAura)
    KAura_ = KAura
    while wait(0.1) and KAura_ do
        KALPlr = game.Players.LocalPlayer
for _,player in pairs(game.Players:GetPlayers()) do
    if player ~= KALPlr then
        if player.Character and player.Character:FindFirstChild('HumanoidRootPart') then
            if (player.Character.HumanoidRootPart.Position - KALPlr.Character.HumanoidRootPart.Position).Magnitude < 20 then
                target = player
            end
        end
    end
end

if target then
    local args = {
    [1] = target.Character.Humanoid,
    [2] = 2
}

game:GetService("ReplicatedStorage").jdskhfsIIIllliiIIIdchgdIiIIIlIlIli:FireServer(unpack(args))

else
    print('no target found :(')
end
    end
end)

s1:NewTextBox("AnyPackName", "TextboxInfo", function(packname)
	local args = {
    [1] = packname
}

game:GetService("ReplicatedStorage").acceptedEvent:FireServer(unpack(args))

end)
s1:NewTextBox("Radio Music", "TextboxInfo", function(radioid)
	local anrad = radioid --id here
local Event = game:GetService("Workspace")["DRadio_Script"].Event
Event:FireServer(anrad)
end)
s2:NewDropdown("Tp to some place", "DropdownInf", {"Spawn", "Lion Base up", "Lion Base", "Barn", "Wooden Village", "Wooden Village2", "Skull", "5k+DummyFarm"}, function(placetp)
    if placetp == "Spawn" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").SpawnPoints.spawnPoint.CFrame
    elseif placetp == "Lion Base" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(413.225586, -46.5574036, 342.786346, -0.345967054, -5.71568002e-08, -0.938246667, -8.65834551e-08, 1, -2.89921385e-08, 0.938246667, 7.12063155e-08, -0.345967054)
    elseif placetp == "Lion Base up" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(400.891174, 85.5729599, 338.229431, -0.151408985, -4.81678413e-08, -0.98847121, 1.59717892e-08, 1, -5.11761158e-08, 0.98847121, -2.35361775e-08, -0.151408985)
    elseif placetp == "Barn" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-111.422882, -90.7581482, -34.2572899, 0.128153786, 7.40475192e-09, 0.991754293, -1.07792175e-08, 1, -6.07343376e-09, -0.991754293, -9.91200189e-09, 0.128153786)
    elseif placetp == "Wooden Village" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1306.79773, -70.4225464, 13.2711592, 0.210619032, 1.07564716e-07, -0.977568209, 1.38653533e-08, 1, 1.13020263e-07, 0.977568209, -3.735855e-08, 0.210619032)
    elseif placetp == "Wooden Village2" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1203.63354, -90.3156509, 953.048157, 0.126293376, -1.29047772e-10, -0.99199295, 2.62288893e-08, 1, 3.20918336e-09, 0.99199295, -2.64241713e-08, 0.126293376)
    elseif placetp == "Skull" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-448.156677, -45.9675636, 1228.43848, 0.346850455, -9.98767788e-08, -0.937920451, 5.4451359e-09, 1, -1.0447382e-07, 0.937920451, 3.11296873e-08, 0.346850455)
    elseif placetp == "5k+DummyFarm" then
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1070.18616, -150.246094, -11.5510368, -0.998719573, -9.45147534e-08, -0.0505883619, -9.2055771e-08, 1, -5.09376186e-08, 0.0505883619, -4.62154475e-08, -0.998719573)
	end
end)
s5:NewLabel("FPS Cap Default: 60")
s5:NewTextBox("FPS Cap", "SliderInfo", function(fpscap)
    setfpscap(fpscap)
end)
s5:NewButton("DragChat", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/svqRbx2n'),true))()
end)
s6:NewTextBox("SpeedHack", "SliderInfo", function(wshack)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = wshack
end)
s6:NewTextBox("JumpHack", "SliderInfo", function(jphack)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = jphack
end)
s5:NewButton("AntiAFK", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringypVvhJBq4QNz", true))()
end)
s6:NewLabel("SpeedHack Default: 16")
s6:NewLabel("JumpPower Default: 50")
s1:NewButton("Become Small", "Desc", function()
        local LPl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local LPlPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    local BuildPart = Instance.new("Part",game.Workspace) --Directory of The Part
    BuildPart.Size = Vector3.new(1,1,1) 	              --The Size of the Part
    BuildPart.Position = LPl.Position --The Position of The Part
    BuildPart.Anchored = true
    wait(0.1)
    LPl.CFrame = game:GetService("Workspace").MagicPart.CFrame
    wait(0.2)
    LPl.CFrame = game:GetService("Workspace").Part.CFrame
    wait(0.1)
    game:GetService("Workspace").Part:Destroy()
end)

