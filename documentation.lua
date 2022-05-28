local lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/InternalSoftworks/UI-Lib/main/source.lua'))()

local win = lib:Window("Internal Lib",Color3.fromRGB(109, 12, 255), Enum.KeyCode.P)

local maintab = win:Tab("Main")
local settingstab = win:Tab("Settings")


maintab:Button("Button", function()
    lib:Notification("Notification", "Hello!", "Hi!")
end)

maintab:Toggle("Toggle",false, function(t)
    print(t)
end)

maintab:Slider("Walkspeed",0,100,15, function(t)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
end)

maintab:Dropdown("Dropdown",{"Option 1","Option 2","Option 3","Option 4","Option 5"}, function(t)
    print(t)
end)

maintab:Colorpicker("Colorpicker",Color3.fromRGB(255,0,0), function(t)
    print(t)
end)

maintab:Textbox("Textbox",true, function(t)
    print(t)
end)

maintab:Bind("Bind",Enum.KeyCode.RightShift, function()
   print("Pressed!")
end)

maintab:Label("Label")


settingstab:Colorpicker("Change UI Color",Color3.fromRGB(44, 120, 224), function(t)
    lib:ChangePresetColor(Color3.fromRGB(t.R * 255, t.G * 255, t.B * 255))
end)
