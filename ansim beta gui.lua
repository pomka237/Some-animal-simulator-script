    local qe = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
    local ww = qe:CreateWindow({
        Name = "TS HUB | Animal simulator",
        LoadingTitle = "TS HUB",
        LoadingSubtitle = "by TS_Doomed&TS_DEATH",
        ConfigurationSaving = {
            Enabled = false,
            FolderName = nil, -- Create a custom folder for your hub/game
            FileName = "Big Hub"
        },
            Discord = {
                Enabled = false,
                Invite = "sirius", -- The Discord invite code, do not include discord.gg/
                RememberJoins = true -- Set this to false to make them join the discord every time they load it up
            },
        KeySystem = false, -- Set this to true to use our key system
        KeySettings = {
            Title = "Sirius Hub",
            Subtitle = "Key System",
            Note = "Join the discord (discord.gg/sirius)",
            FileName = "SiriusKey",
            SaveKey = true,
            GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
            Key = "Hello"
        }
    })
    local wMain = ww:CreateTab("Main", 4483362458) -- Title, Image
    local wlpl = ww:CreateTab("Local Player", 4483362458) -- Title, Image
    local wMisc = ww:CreateTab("Misc", 4483362458) -- Title, Image
    local wCredits = ww:CreateTab("Credits", 4483362458) -- Title, Image
    local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart

    wMain:CreateDropdown({
        Name = "TP to some places",
        Options = {"Spawn", "Lion Base up", "Lion Base", "Barn", "Wooden Village", "Wooden Village2", "Skull", "5k+DummyFarm"},
        CurrentOption = "none",
        Flag = "Dropdown1", 
        Callback = function(placetp)
            if placetp == "Spawn" then
            hrp.CFrame = game:GetService("Workspace").SpawnPoints.spawnPoint.CFrame
        elseif placetp == "Lion Base" then
            hrp.CFrame = CFrame.new(413.225586, -46.5574036, 342.786346, -0.345967054, -5.71568002e-08, -0.938246667, -8.65834551e-08, 1, -2.89921385e-08, 0.938246667, 7.12063155e-08, -0.345967054)
        elseif placetp == "Lion Base up" then
            hrp.CFrame = CFrame.new(400.891174, 85.5729599, 338.229431, -0.151408985, -4.81678413e-08, -0.98847121, 1.59717892e-08, 1, -5.11761158e-08, 0.98847121, -2.35361775e-08, -0.151408985)
        elseif placetp == "Barn" then
            hrp.CFrame = CFrame.new(-111.422882, -90.7581482, -34.2572899, 0.128153786, 7.40475192e-09, 0.991754293, -1.07792175e-08, 1, -6.07343376e-09, -0.991754293, -9.91200189e-09, 0.128153786)
        elseif placetp == "Wooden Village" then
            hrp.CFrame = CFrame.new(1306.79773, -70.4225464, 13.2711592, 0.210619032, 1.07564716e-07, -0.977568209, 1.38653533e-08, 1, 1.13020263e-07, 0.977568209, -3.735855e-08, 0.210619032)
        elseif placetp == "Wooden Village2" then
            hrp.CFrame = CFrame.new(1203.63354, -90.3156509, 953.048157, 0.126293376, -1.29047772e-10, -0.99199295, 2.62288893e-08, 1, 3.20918336e-09, 0.99199295, -2.64241713e-08, 0.126293376)
        elseif placetp == "Skull" then
            hrp.CFrame = CFrame.new(-448.156677, -45.9675636, 1228.43848, 0.346850455, -9.98767788e-08, -0.937920451, 5.4451359e-09, 1, -1.0447382e-07, 0.937920451, 3.11296873e-08, 0.346850455)
        elseif placetp == "5k+DummyFarm" then
        hrp.CFrame = CFrame.new(1070.18616, -150.246094, -11.5510368, -0.998719573, -9.45147534e-08, -0.0505883619, -9.2055771e-08, 1, -5.09376186e-08, 0.0505883619, -4.62154475e-08, -0.998719573)
        end
        end,
    })
    playersList = {}
    for i, plrt in pairs(game.Players:GetPlayers()) do
        table.insert(playersList, plrt.DisplayName..plrt.Name)
    end

    wMain:CreateDropdown({
        Name = "Tp to player",
        Options = playersList,
        CurrentOption = "nobody",
        Flag = "Dropdown2", 
        Callback = function(playertp)
            hrp.CFrame = game.Players[playertp].Character.HumanoidRootPart.CFrame
        end,
    })

    wMain:CreateButton({
        Name = "Free Fireball",
        Callback = function()
                for i,v in pairs (game.Players:GetChildren()) do
        wait()
        for i,b in pairs (v.Backpack:GetChildren()) do
        b.Parent = game.Players.LocalPlayer.Backpack
        end
        end
        end,
    })

    wMain:CreateToggle({
        Name = "Autofarm Coin",
        CurrentValue = false,
        Flag = "AutofarmCoins", 
        Callback = function(AFarmCoin)
            autofarmcoins = AFarmCoin
    while wait(0.1) and autofarmcoins do
        game:GetService("ReplicatedStorage").Events.CoinEvent:FireServer()
    end
        end,
    })

    wMain:CreateToggle({
        Name = "Autofarm Dummy",
        CurrentValue = false,
        Flag = "Toggle1", 
        Callback = function(AFarmDummy)
            autofarmdummy = AFarmDummy
            while wait(0.1) and autofarmdummy do
                hrp.CFrame = game:GetService("Workspace").MAP.dummies["Training Dummy"].HumanoidRootPart.CFrame

                local args = {
                    [1] = workspace.MAP.dummies:FindFirstChild("Training Dummy").Humanoid,
                    [2] = 1
                }
                
                game:GetService("ReplicatedStorage").jdskhfsIIIllliiIIIdchgdIiIIIlIlIli:FireServer(unpack(args))
            end
        end,
    })

    wMain:CreateToggle({
        Name = "Killaura",
        CurrentValue = false,
        Flag = "Killaura", 
        Callback = function(KAura)
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
        end,
    })

    wMain:CreateInput({
        Name = "Any Pack Name",
        PlaceholderText = "Input any pack name",
        RemoveTextAfterFocusLost = false,
        Callback = function(packname)
            local args = {
        [1] = packname
    }

    game:GetService("ReplicatedStorage").acceptedEvent:FireServer(unpack(args))

        end,
    })

    wMain:CreateInput({
        Name = "Free Radio",
        PlaceholderText = "Input song id",
        RemoveTextAfterFocusLost = false,
        Callback = function(musid)
            local anrad = musid --id here
    local Event = game:GetService("Workspace")["DRadio_Script"].Event
    Event:FireServer(anrad)
        end,
    })

    wMain:CreateButton({
        Name = "Become small",
        Callback = function()
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
        end,
    })

    wlpl:CreateParagraph({Title = "Movement", Content = "Change your movements stats"})

    local SpeedDef = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed

    local JumpPDef = game.Players.LocalPlayer.Character.Humanoid.JumpPower

    wlpl:CreateLabel("Speed defolt: "..SpeedDef)

    wlpl:CreateInput({
        Name = "SpeedHack",
        PlaceholderText = "Set speed",
        RemoveTextAfterFocusLost = false,
        Callback = function(SpeedV)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = SpeedV
        end,
    })

    wlpl:CreateLabel("Jump power defolt: "..JumpPDef)

    wlpl:CreateInput({
        Name = "JumpHack",
        PlaceholderText = "Set jump power",
        RemoveTextAfterFocusLost = false,
        Callback = function(JumpPV)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpPV
        end,
    })

    wMisc:CreateButton({
        Name = "Drag chat",
        Callback = function()
            loadstring(game:HttpGet(('https://pastebin.com/raw/svqRbx2n'),true))()
        end,
    })

    wMisc:CreateButton({
        Name = "Anti AFK",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringypVvhJBq4QNz", true))()
        end,
    })

    wCredits:CreateParagraph({Title = "Dev: TS_Doomed(POMKA237)", Content = "Noob who help me: TS_DEATH(R0BL0XX1X2)"})
