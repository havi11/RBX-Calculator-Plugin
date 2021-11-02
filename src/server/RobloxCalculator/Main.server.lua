--local player = game.Players.LocalPlayer
local Roact = require(script.Parent.Roact)
local FirstNum = nil
local Type = nil
local SecondNum = nil
local Toolbar = plugin:CreateToolbar("Breathe Graphics Plugins")
local CalcButton = Toolbar:CreateButton("Calculator", "Use the Calculator.", "rbxassetid://7882855773")
local Opened = false
local SomeInfo = DockWidgetPluginGuiInfo.new(
    Enum.InitialDockState.Float,
    false,
    false,
    200,
    300,
    150,
    150
)
local CalcUI = plugin:CreateDockWidgetPluginGui("Calculator Ver. 1.1", SomeInfo)
CalcUI.Title = "Calculator Ver. 1.1"
--[[local Button = Roact.createElement("ScreenGui", {IgnoreGuiInset = true; ResetOnSpawn = false}, {
    Press = Roact.createElement("TextButton",{
        Size = UDim2.new(0.2,0,0.1,0);
        Position = UDim2.new(0, 0,0.474, 0);
        Text = "Use Calculator";
        TextScaled = true;
        BackgroundColor3 = Color3.fromRGB(0, 255, 255)
    })
})
Roact.mount(Button, CalcUI, "AccessButton")]]--

local CalcGui = Roact.createElement("ScreenGui", {IgnoreGuiInset = true; ResetOnSpawn = false}, {
    Top = Roact.createElement("Frame",{
        Size = UDim2.new(0.2,0,0.3,0);
        BackgroundColor3 = Color3.fromRGB(0, 255, 0);
        --AnchorPoint = Vector2.new(0.5, 0.5);
        Position = UDim2.new(0.5,0,0.5,0)
    }, {NumberWriter = Roact.createElement("TextBox", {
        PlaceholderText = "Put your numbers here...";
        TextScaled = true;
        Size = UDim2.new(1,0,0.3,0);
        PlaceholderColor3 = Color3.new(0, 0, 0);
        Text = ""
    })})
})

local Atn = Roact.createElement("TextButton", {
    Size = UDim2.new(0.2,0,0.3,0);
    Position = UDim2.new(0.040,0,0.500,0);
    Text = "+";
    TextScaled = true;
})

local Mtn = Roact.createElement("TextButton", {
    Size = UDim2.new(0.2,0,0.3,0);
    Position = UDim2.new(0.250,0,0.500,0);
    Text = "×";
    TextScaled = true;
})

local Stn = Roact.createElement("TextButton", {
    Size = UDim2.new(0.2,0,0.3,0);
    Position = UDim2.new(0.460,0,0.500,0);
    Text = "-";
    TextScaled = true;
})

local Dtn = Roact.createElement("TextButton", {
    Size = UDim2.new(0.2,0,0.3,0);
    Position = UDim2.new(0.670,0,0.500,0);
    Text = "÷";
    TextScaled = true;
})

local Gtn = Roact.createElement("TextButton", {
    Size = UDim2.new(0.2,0,0.2,0);
    Position = UDim2.new(0.040,0,0.800,0);
    Text = "=";
    TextScaled = true;
})


local FTC = Roact.createElement("TextButton", {
    Size = UDim2.new(0.2,0,0.2,0);
    Position = UDim2.new(0.380,0,0.800,0);
    Text = "F°-C°";
    TextScaled = true;
})

local CTF = Roact.createElement("TextButton", {
    Size = UDim2.new(0.2,0,0.2,0);
    Position = UDim2.new(0.670,0,0.800,0);
    Text = "C°-F°";
    TextScaled = true;
})

local Abb = Roact.createElement("TextButton", {
    Size = UDim2.new(0.2,0,0.1,0);
    Position = UDim2.new(0.040,0,0.350,0);
    Text = "About";
    TextScaled = true;
})

local Abs = Roact.createElement("Frame", {Size = UDim2.new(1,0,1,0)}, {Logo = Roact.createElement("ImageLabel", {
    Image = "rbxassetid://7644160147";
    Size = UDim2.new(0.3,0,0.3,0);
    Position = UDim2.new(0.3,0,0,0)
})})

local Bruh = Roact.createElement("TextLabel", {
    Text = "Made by Breathe Graphics, Frameworks used: Roact, Rojo, and Foreman.";
    Position = UDim2.new(0,0,0.800,0);
    TextScaled = true;
    Size = UDim2.new(1,0,0.2,0)
})

Roact.mount(CalcGui, CalcUI, "Calculator")
Roact.mount(Atn, CalcUI.Calculator.Top, "PlusButton")
Roact.mount(Mtn, CalcUI.Calculator.Top, "MultiplyButton")
Roact.mount(Stn, CalcUI.Calculator.Top, "SubtractButton")
Roact.mount(Dtn, CalcUI.Calculator.Top, "DivideButton")
Roact.mount(Gtn, CalcUI.Calculator.Top, "GetAnswerButton")
Roact.mount(FTC, CalcUI.Calculator.Top, "FarenhieghtToCelcius")
Roact.mount(CTF, CalcUI.Calculator.Top, "CelciusToFarenhieght")
Roact.mount(Abb, CalcUI.Calculator.Top, "AboutButton")

CalcUI:WaitForChild("Calculator").Top.PlusButton.MouseButton1Click:Connect(function()
    FirstNum = CalcUI:WaitForChild("Calculator").Top.NumberWriter.Text
    Type = 1
end)

CalcUI:WaitForChild("Calculator").Top.MultiplyButton.MouseButton1Click:Connect(function()
    FirstNum = CalcUI:WaitForChild("Calculator").Top.NumberWriter.Text
    Type = 2
end)

CalcUI:WaitForChild("Calculator").Top.SubtractButton.MouseButton1Click:Connect(function()
    FirstNum = CalcUI:WaitForChild("Calculator").Top.NumberWriter.Text
    Type = 3
end)

CalcUI:WaitForChild("Calculator").Top.DivideButton.MouseButton1Click:Connect(function()
    FirstNum = CalcUI:WaitForChild("Calculator").Top.NumberWriter.Text
    Type = 4
end)

CalcUI:WaitForChild("Calculator").Top.FarenhieghtToCelcius.MouseButton1Click:Connect(function()
    FirstNum = CalcUI:WaitForChild("Calculator").Top.NumberWriter.Text
    local Answer = ((FirstNum-32)*5/9).."°"
    CalcUI:WaitForChild("Calculator").Top.NumberWriter.Text = Answer
    print(Answer)
end)

CalcUI:WaitForChild("Calculator").Top.CelciusToFarenhieght.MouseButton1Click:Connect(function()
    FirstNum = CalcUI:WaitForChild("Calculator").Top.NumberWriter.Text
    local Answer = ((FirstNum*9)/5+32).."°"
    CalcUI:WaitForChild("Calculator").Top.NumberWriter.Text = Answer
    print(Answer)
end)

CalcUI:WaitForChild("Calculator").Top.AboutButton.MouseButton1Click:Connect(function()
    Roact.mount(Abs, CalcUI:WaitForChild("Calculator").Top, "About")
    Roact.mount(Bruh, CalcUI:WaitForChild("Calculator").Top.About, "Text")
    wait(5)
    CalcUI:WaitForChild("Calculator").Top.About:Destroy()
end)

CalcUI:WaitForChild("Calculator").Top.GetAnswerButton.MouseButton1Click:Connect(function()
    SecondNum = CalcUI:WaitForChild("Calculator").Top.NumberWriter.Text
    if Type == 1 then
        local Answer = FirstNum + SecondNum
        CalcUI:WaitForChild("Calculator").Top.NumberWriter.Text = Answer
        print(Answer)
    elseif Type == 2 then
        local Answer = FirstNum * SecondNum
        CalcUI:WaitForChild("Calculator").Top.NumberWriter.Text = Answer
        print(Answer)
    elseif Type == 3 then
        local Answer = FirstNum - SecondNum
        CalcUI:WaitForChild("Calculator").Top.NumberWriter.Text = Answer
        print(Answer)
    elseif Type == 4 then
        local Answer = FirstNum / SecondNum
        CalcUI:WaitForChild("Calculator").Top.NumberWriter.Text = Answer
        print(Answer)
    end
end)

CalcButton.Click:Connect(function()
    if Opened then
        CalcUI.Enabled = false
    else
        CalcUI.Enabled = true
        Opened = true
    end

end)