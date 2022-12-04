local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("Some script for Animal Simulator", "RJTheme3")
local Main = Window:NewTab("Main")
local LocalPlayer = Window:NewTab("Local Player")
local Misc = Window:NewTab("Misc")
local Credits = Window:NewTab("Credits")
local Section = Main:NewSection("Animal Simulator 0_0")
local Section2 = Main:NewSection("Tp to some places")
local Section3 = Credits:NewSection("Dev: TS_Doomed(POMKA237 :sunglasses:)")
local Section4 = Credits:NewSection("Noob who help me: TS_DEATH(R0BL0XX1X2)")
local Section5 = Misc:NewSection("Misc")
local Section6 = LocalPlayer:NewSection("Movement")
Section:NewButton("Free Fireball", "ButtonInfo", function()
    for i,v in pairs (game.Players:GetChildren()) do
    wait()
    for i,b in pairs (v.Backpack:GetChildren()) do
    b.Parent = game.Players.LocalPlayer.Backpack
    end
    end
end)
Section:NewButton("Autofarm Coin", "ButtonInfo", function()
    while wait() do -- бесконечный цикл 
    game:GetService("ReplicatedStorage").Events.CoinEvent:FireServer()
    end
end)
Section:NewTextBox("AnyPackName", "TextboxInfo", function(packname)
	local args = {
    [1] = packname
}

game:GetService("ReplicatedStorage").acceptedEvent:FireServer(unpack(args))

end)
Section:NewTextBox("Radio Music", "TextboxInfo", function(radioid)
	local anrad = radioid --id here
local Event = game:GetService("Workspace")["DRadio_Script"].Event
Event:FireServer(anrad)
end)
Section2:NewDropdown("Tp to some place", "DropdownInf", {"Spawn", "Lion Base up", "Lion Base", "Barn", "Wooden Village", "Wooden Village2", "Skull"}, function(placetp)
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
    end
end)
Section5:NewButton("DragChat", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/svqRbx2n'),true))()
end)
Section6:NewSlider("SpeedHack", "SliderInfo", 500, 16, function(wshack) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = wshack
end)
Section6:NewSlider("JumpHack", "SliderInfo", 5000, 50, function(jphack) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = jphack
end)
Section5:NewSlider("FPS Cap", "SliderInfo", 500, 10, function(fpscap) -- 500 (Макс. значение) | 0 (Мин. значение)
    setfpscap(fpscap)
end)
Section5:NewButton("AntiAFK", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringypVvhJBq4QNz", true))()
end)
