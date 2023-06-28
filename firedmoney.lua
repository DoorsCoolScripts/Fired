local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Fired Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "oopp", IntroText = "Fired Hub", IntroIcon = "rbxassetid://13034797311"})

_G.autoclicker = true
_G.autorebirth = true
_G.autospin = true

function autotapper()
    while _G.autoclicker == true do
        game:GetService("ReplicatedStorage"):WaitForChild("events-shared/network@GlobalEvents"):WaitForChild("placeBlock"):FireServer()
wait(.00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
    end
end

function autospinner()
    while _G.autospin == true do
        local args = {
            [1] = 9
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("functions-shared/network@GlobalFunctions"):WaitForChild("s:spin"):FireServer(unpack(args))
wait(.00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
    end
end

function autorebirther()
    while _G.autorebirth == true do
        local args = {
            [1] = 4
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("functions-shared/network@GlobalFunctions"):WaitForChild("s:rebirth"):FireServer(unpack(args)) 
wait(.00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
    end
end

local Tab = Window:MakeTab({
	Name = "Hacks",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Auto Clicker",
	Default = false,
	Callback = function(Value)
		_G.autoclicker = Value
        autotapper()
	end    
})

Tab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		_G.autorebirth = Value
        autorebirther()
	end    
})

Tab:AddToggle({
	Name = "Auto Spin Wheel",
	Default = false,
	Callback = function(Value)
		_G.autospin = Value
        autospinner()
	end    
})

Tab:AddButton({
	Name = "Claim All Working Codes",
	Callback = function()
      		local args = {
    [1] = 39,
    [2] = "ihateseals"
}

game:GetService("ReplicatedStorage"):WaitForChild("functions-shared/network@GlobalFunctions"):WaitForChild("s:redeemCode"):FireServer(unpack(args))
local args = {
    [1] = 39,
    [2] = "scorpio"
}

game:GetService("ReplicatedStorage"):WaitForChild("functions-shared/network@GlobalFunctions"):WaitForChild("s:redeemCode"):FireServer(unpack(args))
local args = {
    [1] = 39,
    [2] = "luckyfrog"
}

game:GetService("ReplicatedStorage"):WaitForChild("functions-shared/network@GlobalFunctions"):WaitForChild("s:redeemCode"):FireServer(unpack(args))
local args = {
    [1] = 39,
    [2] = "KUBO"
}

game:GetService("ReplicatedStorage"):WaitForChild("functions-shared/network@GlobalFunctions"):WaitForChild("s:redeemCode"):FireServer(unpack(args))

  	end    
})


