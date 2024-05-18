local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Habibi-Hub V1", "GrapeTheme")

local Tab1 = Window:NewTab("BladeBall")

if game.PlaceId == 13772394625 then
    print("BladeBall run")
    local Section = Tab1:NewSection("Actions") -- Create a new section within the "BladeBall" tab

    while true do
        local startTime = tick()
        print("Game_blade ball_status_check at " .. os.date("%c"))
        local endTime = tick()
        local elapsedTime = endTime - startTime
        print("Status check issued in " .. elapsedTime .. " seconds")
        wait(2.5)
    end

    Section:NewButton("ButtonText", "ButtonInfo", function() -- Define a new button in the section
        -- Your function code here
        print("Button clicked")
    end)
end

local Tab2 = Window:NewTab("General-Utility") -- Corrected tab name

local Section2 = Tab2:NewSection("Actions") -- Create a new section within the "General-Utility" tab

Section2:NewButton("Reset Avatar", "ButtonInfo", function() -- Set Humanoid Health to 0 
    local plr = game:GetService("Players").LocalPlayer
    local character = plr.Character or plr.CharacterAdded:Wait()
    local humanoid = character:FindFirstChild("Humanoid")

    humanoid.Health = 0
end)

