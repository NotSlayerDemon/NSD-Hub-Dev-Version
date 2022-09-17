if game.PlaceId == 3652625463 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "v1.7.5 Lifting Simulator", HidePremium = false, IntroEnabled = true,IntroText = "Welcome!", SaveConfig = true, ConfigFolder = "LiftingTest"})
                
    --Values
    getgenv().autoLift = true
    getgenv().autoTool = true
    getgenv().autoSell = true	
    getgenv().autobuyStage = true	
    getgenv().autobuyGenetics = true
    getgenv().autobuyWeights = true
    --Functions
                
    function autoLift()
        while getgenv().autoLift == true do
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"GainMuscle"})
        wait(0.5)        
     end
    end
    
    function autoTool()
        while getgenv().autoTool == true do
            for i,v in next, game.Players.LocalPlayer.Backpack:GetChildren() do
                if v:isA("Tool") and v:FindFirstChild("Income_Tool_Script") then
                game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(v)
                end
                end
                for i,v in next, game.Players.LocalPlayer.Character:GetChildren() do
                if v:isA("Tool") and v:FindFirstChild("Income_Tool_Script") then
                v:Activate()
                end
                end
            end
        end
    end

    function autoSell()	
        while getgenv().autoSell == true do
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"SellMuscle"})
        wait(0.5)        
     end
    end	
        
    function autobuyStage()
        while getgenv().autobuyStage == true do
        loadstring(game:HttpGet(('https://pastebin.com/raw/yjH02jbS'),true))()
     end
    end
        
    function autobuyGenetics()
        while getgenv().autobuyGenetics == true do
        loadstring(game:HttpGet(('https://pastebin.com/raw/EeMP9zjC'),true))()
     end
    end
            
    function autobuyWeights()
        while getgenv().autobuyWeights == true do
        loadstring(game:HttpGet(('https://pastebin.com/raw/7cu6vrRH'),true))()
     end
    end    
    
    
    -- Tabs
    local FarmTab = Window:MakeTab({
        Name = "AutoFarm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
                
    -- Toggle 
    FarmTab:AddToggle({
        Name = "Auto Lift",
        Default = false,
        Callback = function(Value)
            getgenv().autoLift = Value
            autoLift()
        end
    })
    
    FarmTab:AddToggle({
        Name = "Auto Tool",
        Default = false,
        Callback = function(Value)
            getgenv().autoTool = Value
            autoTool()
        end
    })
    
    -- Toggle
    FarmTab:AddToggle({
        Name = "Auto Sell",
        Default = false,
        Callback = function(Value)
            getgenv().autoSell = Value
            autoSell()
        end
    })
    
    -- Toggle
    FarmTab:AddToggle({
        Name = "Auto Buy Stage",
        Default = false,
        Callback = function(Value)
            getgenv().autobuyStage = Value
            autobuyStage()
        end
    })
        
    -- Toggle 
    FarmTab:AddToggle({
        Name = "Auto Buy Genetics",
        Default = false,
        Callback = function(Value)
            getgenv().autobuyGenetics = Value
            autobuyGenetics()
        end
    })
    
    -- Toggle 
    FarmTab:AddToggle({
        Name = "Auto Buy Weights",
        Default = false,
        Callback = function(Value)
            getgenv().autobuyWeights = Value
            autobuyWeights()
        end
    })
    
    local ScriptsTab = Window:MakeTab({
        Name = "Script",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
        
    ScriptsTab:AddButton({
        Name = "Anti AFK",
        Callback = function()
         loadstring(game:HttpGet(('https://raw.githubusercontent.com/NotSlayerDemon/Anti-afk/main/Anti%20AFK.lua')))()  
         end
    })
    
    ScriptsTab:AddButton({
        Name = "Auto Clicker",
        Callback = function()
            getgenv().Settings = {
                ["Auto Click Keybind"] = "V", -- Use an UpperCase letter or KeyCode Enum. Ex: Enum.KeyCode.Semicolon
                ["Lock Mouse Position Keybind"] = "B",
                ["Right Click"] = false,
                ["GUI"] = true, -- A drawing gui that tells you what is going on with the autoclicker.
                ["Delay"] = 0 -- 0 for RenderStepped, other numbers go to regular wait timings.
            }
            loadstring(game:HttpGet("https://raw.githubusercontent.com/BimbusCoder/Script/main/Auto%20Clicker.lua"))() 
        end    
    })

    OrionLib:MakeNotification({
        Name = "Ty for using the my script",
        Content = "You Executed me "..Player.Name..".",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
    end
    OrionLib:Init()-- End of this script
end   
function CorrectKeyNotification()
    orionLib:MakeNotification({
        Name = "Correct Key",
        Content = "You have entered the correct key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function incorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "InCorrect Key",
        Content = "You have entered the Incorrect key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end
     
local KeyTab = Window:MakeTab({
    Name = "Key",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

KeyTab:AddTextbox({
    Name = "Enter Key",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        getgenv().Keyinput = Value
    end	  
})

KeyTab:AddButton({
    Name = "Ceack Key",
    Callback = function()
        if getgenv().Keyinput == getgenv().Key then
        MakeScriptHub()
        CorrectKeyNotification()
        else
            incorrectKeyNotification()
        end	
    end    
})

    
