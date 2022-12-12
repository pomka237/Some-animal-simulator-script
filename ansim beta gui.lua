local qe = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefanuk12/Venyx-UI-Library/main/source2.lua"))()

local ww = qe.new({
    title = "TS HUB | Animal Simulator"
})

local Themes = {
    Background = Color3.fromRGB(24, 24, 24),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),  
    TextColor = Color3.fromRGB(255, 255, 255)
}

local wMain = ww:addPage({
    title = "Main",
    icon = nil
})

local wlpl = ww:addPage({
    title = "Local Player",
    icon = nil
})

local wMisc = ww:addPage({
    title = "Misc",
    icon = nil
})

local wCredits = ww:addPage({
    title = "Credits",
    icon = nil
})

local MainS1 = wMain:addSection({
    title = "Animal Simulator"
})

MainS1:addKeybind({
    title = "Toggle UI",
    key = Enum.KeyCode.F,
    callback = function()
        ww:toggle()
    end
})

MainS1:addButton({
    title = "Destroy GUI",
    callback = function()
        game.CoreGui["TS HUB | Animal Simulator"]:Destroy()
    end
})

MainS1:addDropdown({
    title = "Tp to place",
    default = "Choose place",
    list = {"Spawn", "Lion Base up", "Lion Base", "Barn", "Wooden Village", "Wooden Village2", "Skull", "5k+DummyFarm"},
    callback = function(placetp)
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
    end
})

playersList = {}
for i, plrt in pairs(game.Players:GetPlayers()) do
    table.insert(playersList, plrt.DisplayName.." ("..plrt.Name..")")
end

tptoplayerdd = MainS1:addDropdown({
    title = "Tp to player",
    list = playersList,
    default = "Choose player", 
    callback = function(playertp)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[playertp].Character.HumanoidRootPart.CFrame
    end
})

MainS1:addButton({
    title = "Refresh Player List ^",
    callback = function()
        playerList = {}
        for i, plrt in pairs(game.Players:GetPlayers()) do
            table.insert(playerList, plrt)
        end
        tptoplayerdd.Options:Update({list = playerList})
    end
})

MainS1:addButton({
    title = "Free Fireball",
    callback = function()
        for i,v in pairs (game.Players:GetChildren()) do
            wait()
            for i,b in pairs (v.Backpack:GetChildren()) do
                 b.Parent = game.Players.LocalPlayer.Backpack
            end
        end
    end
})

MainS1:addToggle({
    title = "Autofarm Coin",
    toggled = false,
    callback = function(AFarmCoin)
        autofarmcoins = AFarmCoin
        while wait(1.2) and autofarmcoins do
            game:GetService("ReplicatedStorage").Events.CoinEvent:FireServer()
        end
    end
})

MainS1:addToggle({
    title = "Autofarm Dummy",
    toggled = false,
    callback = function(AFarmDummy)
        autofarmdummy = AFarmDummy
        while wait(0.1) and autofarmdummy do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.dummies["Training Dummy"].HumanoidRootPart.CFrame

            local args = {
                [1] = workspace.MAP.dummies:FindFirstChild("Training Dummy").Humanoid,
                [2] = 1
            }
            
            game:GetService("ReplicatedStorage").jdskhfsIIIllliiIIIdchgdIiIIIlIlIli:FireServer(unpack(args))
        end
    end
})

MainS1:addToggle({
	title = "Autofarm Dummy 5k+",
	toggled = false,
	callback = function(AFarmDummy2)
		autofarmdummy2 = AFarmDummy2
        while wait(0.1) and autofarmdummy2 do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.waterfall1.Dummy2.HumanoidRootPart.CFrame

            local args = {
                [1] = workspace.MAP.waterfall1.Dummy2.Humanoid,
                [2] = 1
            }
            
            game:GetService("ReplicatedStorage").jdskhfsIIIllliiIIIdchgdIiIIIlIlIli:FireServer(unpack(args))
            
        end
	end
})

MainS1:addToggle({
    title = "Killaura",
    toggled = false,
    callback = function(KAura)
        KAura_ = KAura
        while wait(0.65) and KAura_ do
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
    end
})

MainS1:addTextbox({
    title = "Any Pack Name",
    default = "Any pack name",
    callback = function(packname)

        local args = {
    [1] = packname
}

game:GetService("ReplicatedStorage").acceptedEvent:FireServer(unpack(args))

    end
})

MainS1:addTextbox({
    title = "Free Radio",
    default = "Music ID",
    callback = function(musid)
        local anrad = musid --id here
local Event = game:GetService("Workspace")["DRadio_Script"].Event
Event:FireServer(anrad)
    end
})

MainS1:addButton({
    title = "Become small",
    callback = function()
            local LPl = game.Players.LocalPlayer.Character.HumanoidRootPart
        local LPlPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        local BuildPart = Instance.new("Part",game.Workspace) --Directory of The Part
        BuildPart.Size = Vector3.new(1,1,1) 	              --The Size of the Part
        BuildPart.Position = LPl.Position --The Position of The Part
        BuildPart.Anchored = true
        wait(0.1)
        LPl.CFrame = game:GetService("Workspace").MagicPart.CFrame
        wait(0.3)
        LPl.CFrame = game:GetService("Workspace").Part.CFrame
        wait(0.1)
        game:GetService("Workspace").Part:Destroy()
    end
})

local SpeedDef = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed

local JumpPDef = game.Players.LocalPlayer.Character.Humanoid.JumpPower

local lplS1 = wlpl:addSection({
    title = "Movement hack"
})

lplS1:addTextbox({
    title = "SpeedHack",
    default = SpeedDef,
    callback = function(SpeedV)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = SpeedV
    end
})

lplS1:addTextbox({
    title = "JumpHack",
    default = JumpPDef,
    callback = function(JumpPV)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpPV
    end
})

local MiscS1 = wMisc:addSection({
    title = "Misc"
})

MiscS1:addButton({
    title = "Drag chat",
    callback = function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/svqRbx2n'),true))()
    end
})

MiscS1:addButton({
    title = "Anti AFK",
    callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringypVvhJBq4QNz", true))()
    end
})
