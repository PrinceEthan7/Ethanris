-- Ninja Legends 2 Script with User Details

local player = game.Players.LocalPlayer
local UIS = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local runService = game:GetService("RunService")

local function httpPost(url, data)
    local success, response = pcall(function()
        return HttpService:PostAsync(url, HttpService:JSONEncode(data), Enum.HttpContentType.ApplicationJson)
    end)
    if not success then
        warn("HTTP Post failed: " .. tostring(response))
    end
end

-- Define player credentials
local username = "7Prince_Ethan"
local password = "0702777253"
local profile_id = "4121229705"

-- Function to swing blade
local function autoSwing()
    while true do
        wait(0.1)
        -- Implement swing logic here
        -- e.g., player:SwingBlade()
    end
end

-- Function to sell elements
local function autoSell()
    while true do
        wait(1)
        -- Implement sell logic here
        -- e.g., player:SellElements()
    end
end

-- Function to farm Shards
local function shardsFarm()
    while true do
        wait(1)
        -- Implement Shard farming logic here
        -- e.g., player:FarmShards()
    end
end

-- Function to farm coins
local function coinsFarm()
    while true do
        wait(1)
        -- Implement Coin farming logic here
        -- e.g., player:FarmCoins()
    end
end

-- Function to collect all chests
local function collectChests()
    while true do
        wait(5)
        -- Implement chest collection logic here
        -- e.g., player:CollectChests()
    end
end

-- Function for auto wheel (24h)
local function autoWheel()
    while true do
        wait(3600) -- waits 1 hour
        -- Implement wheel logic here
        -- e.g., player:SpinWheel()
    end
end

-- Function to buy all crystals (belts)
local function buyAllBelts()
    while true do
        wait(1)
        -- Implement belt buying logic here
        -- e.g., player:BuyAllBelts()
    end
end

-- Function to buy all skills
local function buyAllSkills()
    while true do
        wait(1)
        -- Implement skill buying logic here
        -- e.g., player:BuyAllSkills()
    end
end

-- Function to buy all shuriken
local function buyAllShuriken()
    while true do
        wait(1)
        -- Implement shuriken buying logic here
        -- e.g., player:BuyAllShuriken()
    end
end

-- Function to buy all evolutions
local function buyAllEvolutions()
    while true do
        wait(1)
        -- Implement evolution buying logic here
        -- e.g., player:BuyAllEvolutions()
    end
end

-- Function to defeat the Elemental boss
local function defeatBoss()
    while true do
        wait(5)
        -- Implement boss defeat logic here for Elemental boss
        -- e.g., player:DefeatBoss("Elemental boss")
    end
end

-- Function to open selected egg
local function openSelectedEgg(eggId)
    while true do
        wait(1)
        -- Implement egg opening logic here
        -- e.g., player:OpenEgg(eggId)
    end
end

-- Function for auto open selected egg
local function autoOpenSelectedEgg(eggId)
    while true do
        wait(1)
        -- Implement auto open logic here
        -- e.g., player:AutoOpenEgg(eggId)
    end
end

-- Function to auto sell pets
local function autoSellPet()
    while true do
        wait(1)
        -- Implement auto sell pet logic here
        -- e.g., player:AutoSellPet("Secret chaos sorcerer", "Dark hunter karkinos")
    end
end

-- Start all functions
spawn(autoSwing)
spawn(autoSell)
spawn(shardsFarm)
spawn(coinsFarm)
spawn(collectChests)
spawn(autoWheel)
spawn(buyAllBelts)
spawn(buyAllSkills)
spawn(buyAllShuriken)
spawn(buyAllEvolutions)
spawn(defeatBoss) -- Targets Elemental boss
spawn(function() openSelectedEgg("Lightning storm orb") end)
spawn(function() autoOpenSelectedEgg("Secret Shadow orb") end)
spawn(autoSellPet)

-- GUI Management
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0.2, 0, 0.4, 0)
frame.Position = UDim2.new(0.4, 0, 0.3, 0)
frame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
frame.Draggable = true

local titleLabel = Instance.new("TextLabel", frame)
titleLabel.Size = UDim2.new(1, 0, 0.1, 0)
titleLabel.Text = "Ninja Legends 2 Script"
titleLabel.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
titleLabel.TextColor3 = Color3.new(1, 1, 1)

-- Example: Button to start Auto Swing
local autoSwingButton = Instance.new("TextButton", frame)
autoSwingButton.Size = UDim2.new(0.8, 0, 0.1, 0)
autoSwingButton.Position = UDim2.new(0.1, 0, 0.15, 0)
autoSwingButton.Text = "Start Auto Swing"
autoSwingButton.MouseButton1Click:Connect(autoSwing)

-- Continue adding GUI buttons for other functions as needed

print("Ninja Legends 2 script loaded successfully!")
