local UIConfig = {Bind = Enum.KeyCode.RightControl}

local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
        
ScreenGui.Name = "ImageButton"
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Draggable = true
ImageButton.Image = "http://www.roblox.com/asset/?id=12781257228"
ImageButton.MouseButton1Down:connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
end)
UICorner.Parent = ImageButton

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local LWADGAW = false
function dragify(Frame, object)
    dragToggle = nil
    dragSpeed = .25
    dragInput = nil
    dragStart = nil
    dragPos = nil

    function updateInput(input)
        Delta = input.Position - dragStart
        Position =
            UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(object, TweenInfo.new(dragSpeed), {Position = Position}):Play()
    end

    Frame.InputBegan:Connect(
        function(input)
            if
                (input.UserInputType == Enum.UserInputType.MouseButton1 or
                    input.UserInputType == Enum.UserInputType.Touch)
            then
                dragToggle = true
                dragStart = input.Position
                startPos = object.Position
                input.Changed:Connect(
                    function()
                        if (input.UserInputState == Enum.UserInputState.End) then
                            dragToggle = false
                        end
                    end
                )
            end
        end
    )

    Frame.InputChanged:Connect(
        function(input)
            if
                (input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch)
            then
                dragInput = input
            end
        end
    )

    game:GetService("UserInputService").InputChanged:Connect(
    function(input)
        if (input == dragInput and dragToggle) then
            updateInput(input)
        end
    end
    )
end

library = {}

if game:GetService("CoreGui"):FindFirstChild("Zee Hub UI") then
    game:GetService("CoreGui"):FindFirstChild("Zee Hub UI"):Destroy()
end

local ZeeHubUI = Instance.new("ScreenGui")
ZeeHubUI.Name = "Zee Hub UI"
ZeeHubUI.Parent = game:GetService("CoreGui")
ZeeHubUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

function library:Evil()
    local Main = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local UIStroke = Instance.new("UIStroke")

    Main.Name = "Main"
    Main.Parent = ZeeHubUI
    Main.AnchorPoint = Vector2.new(0.5, 0.5)
    Main.BackgroundColor3 = Color3.fromRGB(10, 11, 12)
    Main.BorderColor3 = Color3.fromRGB(255, 0, 4)
    Main.BorderSizePixel = 2
    Main.ClipsDescendants = true
    Main.Position = UDim2.new(0.5, 0, 0.5, 0)

    Main.Size = UDim2.new(0, 600, 0, 2) wait(0.1)
    Main:TweenSize(UDim2.new(0,600,0,335),"Out","Back",.5,true) wait(.2)
    Main.ClipsDescendants = false

    spawn(function()
        while wait() do
            if LWADGAW == true then
                dragify(Main,Main)
            end
        end
    end)
    dragify(Main,Main)

    local uitoggled = false
    UserInputService.InputBegan:Connect(
        function(io, p)
            if io.KeyCode == UIConfig.Bind then
                if uitoggled == false then
                    Main.ClipsDescendants = true
                    Main:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.4, true)
                    uitoggled = true
                    Main.Visible = false
                else
                    Main.Visible = true wait() Main:TweenSize(UDim2.new(0, 600, 0, 335), Enum.EasingDirection.Out, Enum.EasingStyle.Quart,0.4,true)
                    wait(0.2)
                    Main.ClipsDescendants = true
                    uitoggled = false
                end
            end
        end
    )

    UICorner.CornerRadius = UDim.new(0, 5)
    UICorner.Parent = Main

    UIStroke.Thickness = 1.5
    UIStroke.Parent = Main
    UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UIStroke.LineJoinMode = Enum.LineJoinMode.Round
    UIStroke.Color = Color3.fromRGB(255, 0, 4)
    UIStroke.Transparency = 0.10

    local Main2 = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local UIStroke_2 = Instance.new("UIStroke")

    Main2.Name = "Main2"
    Main2.Parent = Main
    Main2.Active = true
    Main2.AnchorPoint = Vector2.new(0.5, 0.5)
    Main2.BackgroundColor3 = Color3.fromRGB(2, 2, 2)
    Main2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Main2.BorderSizePixel = 0
    Main2.Position = UDim2.new(0.502000034, 0, 0.512455523, 0)
    Main2.Size = UDim2.new(0, 575, 0, 300)

    UICorner_2.CornerRadius = UDim.new(0, 5)
    UICorner_2.Parent = Main2

    UIStroke_2.Thickness = 1.5
    UIStroke_2.Parent = Main2
    UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UIStroke_2.LineJoinMode = Enum.LineJoinMode.Round
    UIStroke_2.Color = Color3.fromRGB(255, 0, 4)
    UIStroke_2.Transparency = 0.10

    local Top = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local Logo = Instance.new("ImageLabel")
    local UICorner_4 = Instance.new("UICorner")

    Top.Name = "Top"
    Top.Parent = Main2
    Top.AnchorPoint = Vector2.new(0.5, 0.5)
    Top.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Top.BorderSizePixel = 0
    Top.Position = UDim2.new(0.0544226132, 0, 0.500217974, 0)
    Top.Size = UDim2.new(0, 55, 0, 258)

    UICorner_3.CornerRadius = UDim.new(0, 5)
    UICorner_3.Parent = Top

    Logo.Name = "Logo"
    Logo.Parent = Top
    Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Logo.BackgroundTransparency = 1.000
    Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Logo.BorderSizePixel = 0
    Logo.Position = UDim2.new(0.124675401, 0, 0.0270120781, 0)
    Logo.Size = UDim2.new(0, 40, 0, 40)
    Logo.Image = "rbxassetid://12781257228"

    UICorner_4.CornerRadius = UDim.new(0, 3)
    UICorner_4.Parent = Logo

    local Bottom = Instance.new("Frame")
    local ImageButton = Instance.new("ImageButton")
    local NameandTap = Instance.new("TextLabel")

    --{0, 500}, {0, 250}

    Bottom.Name = "Bottom"
    Bottom.Parent = Main2
    Bottom.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Bottom.BackgroundTransparency = 1.000
    Bottom.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Bottom.BorderSizePixel = 0
    Bottom.Position = UDim2.new(0.106530689, 0, 0.135464936, 0)
    Bottom.Size = UDim2.new(0, 500, 0, 250)

    ImageButton.Parent = Bottom
    ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageButton.BackgroundTransparency = 1.000
    ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.BorderSizePixel = 0
    ImageButton.Position = UDim2.new(0.933514178, 10, -0.157381549, 0)
    ImageButton.Size = UDim2.new(0, 30, 0, 30)
    ImageButton.Image = "rbxassetid://14553226015"

    NameandTap.Name = "Name and Tap"
    NameandTap.Parent = Bottom
    NameandTap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameandTap.BackgroundTransparency = 1.000
    NameandTap.BorderColor3 = Color3.fromRGB(0, 0, 0)
    NameandTap.BorderSizePixel = 0
    NameandTap.Position = UDim2.new(0.0154185025, 0, -0.121076234, -5)
    NameandTap.Size = UDim2.new(0, 104, 0, 21)
    NameandTap.Font = Enum.Font.FredokaOne
    NameandTap.Text = "Zee Tab 1/5"
    NameandTap.TextColor3 = Color3.fromRGB(255, 255, 255)
    NameandTap.TextSize = 14.000
    NameandTap.TextXAlignment = Enum.TextXAlignment.Left

    local TabContainer = Instance.new("ScrollingFrame")
    local UICorner_5 = Instance.new("UICorner")
    local UIPadding = Instance.new("UIPadding")
    local UIListLayout = Instance.new("UIListLayout")

    TabContainer.Name = "Tap"
    TabContainer.Parent = Top
    TabContainer.Active = true
    TabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabContainer.BackgroundTransparency = 1.000
    TabContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TabContainer.BorderSizePixel = 0
    TabContainer.Position = UDim2.new(0.127272725, 0, 0.224806204, 0)
    TabContainer.Size = UDim2.new(0, 40, 0, 192)
    TabContainer.CanvasSize = UDim2.new(0, 0, 2, UIListLayout.AbsoluteContentSize.Y)
    TabContainer.ScrollBarThickness = 0

    UIPadding.Parent = TabContainer

    UIListLayout.Parent = TabContainer
    UIListLayout.Padding = UDim.new(0,5)
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
    function()
        TabContainer.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
    end)

    addtap = {}
    TapOpen = false
    function addtap:CraftTab(Name, Icon)
        NameandTap.Text = "Zee Tab Have Tap | Main"
        local TapName = Name

        local TabButton = Instance.new("ImageButton")

        TabButton.Name = "TabButton"
        TabButton.Parent = TabContainer
        TabButton.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
        TabButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TabButton.BorderSizePixel = 0
        TabButton.Position = UDim2.new(0.649999976, 0, -0.020833334, 0)
        TabButton.Size = UDim2.new(0, 40, 0, 40)
        TabButton.Image = "rbxassetid://"..Icon or 14553226015

        UICorner_5.CornerRadius = UDim.new(0, 3)
        UICorner_5.Parent = TabButton

        local Page = Instance.new("ScrollingFrame")
        local Left = Instance.new("ScrollingFrame")
        local Right = Instance.new("ScrollingFrame")
        local UIListLayout_5 = Instance.new("UIListLayout")
        local UIPadding_5 = Instance.new("UIPadding")

        Page.Name = "Page"
        Page.Parent = Bottom
        Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Page.BackgroundTransparency = 1.000
        Page.Size = UDim2.new(0, 500, 0, 250)
        Page.ScrollBarThickness = 0
        Page.CanvasSize = UDim2.new(0, 0, 0, 0)
        Page.Visible = false

        Left.Name = "Left"
        Left.Parent = Page
        Left.Active = true
        Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Left.BackgroundTransparency = 1
        Left.Size = UDim2.new(0, 250, 0, 250)
        Left.ScrollBarThickness = 0
        Left.CanvasSize = UDim2.new(0, 0, 0, 0)

        Right.Name = "Right"
        Right.Parent = Page
        Right.Active = true
        Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Right.BackgroundTransparency = 1
        Right.Size = UDim2.new(0, 250, 0, 250)
        Right.ScrollBarThickness = 0
        Right.CanvasSize = UDim2.new(0, 0, 0, 0)

        local LeftList = Instance.new("UIListLayout")
        local RightList = Instance.new("UIListLayout")

        LeftList.Parent = Left
        LeftList.SortOrder = Enum.SortOrder.LayoutOrder
        LeftList.Padding = UDim.new(0, 5)

        RightList.Parent = Right
        RightList.SortOrder = Enum.SortOrder.LayoutOrder
        RightList.Padding = UDim.new(0, 5)

        UIListLayout_5.Parent = Page
        UIListLayout_5.FillDirection = Enum.FillDirection.Horizontal
        UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout_5.Padding = UDim.new(0, 3)

        UIPadding_5.Parent = Page

        if TapOpen == false then
            TapOpen = true
            Page.Visible = true
            TabButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
            TabButton.ImageTransparency = 0
        end

        TabButton.MouseButton1Click:Connect(
            function()
                for _, x in next, TabContainer:GetChildren() do
                    if x.Name == "TabButton" then
                        for index, y in next, Bottom:GetChildren() do
                            if y.Name ~= "ImageButton" and y.Name ~= "Name and Tap" then
                                y.Visible = false
                            end
                        end
                    end
                end
                Page.Visible = true
                NameandTap.Text = "Zee Tab Have Tap | "..TapName
            end
        )

        local function GetType(value)
            if value == 1 or value == "Left" then
                return Left
            elseif value == 2 or value == "Right" then
                return Right
            else
                return Left
            end
        end

        game:GetService("RunService").Stepped:Connect(function()
            pcall(function()
                Right.CanvasSize = UDim2.new(0,0,0,RightList.AbsoluteContentSize.Y + 5)
                Left.CanvasSize = UDim2.new(0,0,0,LeftList.AbsoluteContentSize.Y + 5)
            end)
        end)

        local sections = {}
        function sections:CraftPage(Name,side)

            if side == nil then
                return Left
            end

            local Section = Instance.new("Frame")
            local UICorner_5 = Instance.new("UICorner")
            local Top_2 = Instance.new("Frame")
            local Line = Instance.new("Frame")
            local Sectionname = Instance.new("TextLabel")
            local SectionContainer = Instance.new("Frame")
            local SectionContainer_2 = Instance.new("Frame")
            local UIListLayout_2 = Instance.new("UIListLayout")
            local UIPadding_2 = Instance.new("UIPadding")

            Section.Name = "Section"
            Section.Parent = GetType(side)
            Section.BackgroundColor3 = Color3.fromRGB(0, 0, 10)
            Section.ClipsDescendants = true
            Section.Transparency = 0.1
            Section.Size = UDim2.new(1, 0, 0, 40)

            UICorner_5.CornerRadius = UDim.new(0, 5)
            UICorner_5.Parent = Section

            Top_2.Name = "Top"
            Top_2.Parent = Section
            Top_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Top_2.BackgroundTransparency = 1.000
            Top_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
            Top_2.Size = UDim2.new(0, 238, 0, 31)

            Line.Name = "Line"
            Line.Parent = Top_2
            Line.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            Line.BorderSizePixel = 0
            Line.Size = UDim2.new(0, 274, 0, 1)

            SectionContainer.Name = "SectionContainer"
            SectionContainer.Parent = Top_2
            SectionContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SectionContainer.BackgroundTransparency = 1.000
            SectionContainer.BorderSizePixel = 0
            SectionContainer.Position = UDim2.new(0, 0, 0.796416223, 0)
            SectionContainer.Size = UDim2.new(0, 239, 0, 270)

            SectionContainer_2.Name = "SectionContainer_2"
            SectionContainer_2.Parent = Top_2
            SectionContainer_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SectionContainer_2.BackgroundTransparency = 1.000
            SectionContainer_2.BorderSizePixel = 0
            SectionContainer_2.Position = UDim2.new(0, 0, 0.796416223, 0)
            SectionContainer_2.Size = UDim2.new(0, 239, 0, 270)

            UIListLayout_2.Parent = SectionContainer
            UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_2.Padding = UDim.new(0, 10)

            UIPadding_2.Parent = SectionContainer
            UIPadding_2.PaddingLeft = UDim.new(0, 5)

            UIListLayout_2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                Section.Size = UDim2.new(1, 0, 0, UIListLayout_2.AbsoluteContentSize.Y + 35)
            end)

            local function_main = {}
            function function_main:Toggle(Text,Value,callback)
                local Toggle = Instance.new("Frame")
                local UICorner_6 = Instance.new("UICorner")
                local Text1 = Instance.new("TextLabel")
                local Text2 = Instance.new("TextLabel")
                local TextButton = Instance.new("TextButton")
                local MainToggle = Instance.new("Frame")
                local UICorner_7 = Instance.new("UICorner")
                local UICorner_8 = Instance.new("UICorner")
                local Frame = Instance.new("Frame")


                Toggle.Name = "Toggle"
                Toggle.Parent = SectionContainer
                Toggle.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Toggle.BorderSizePixel = 0
                Toggle.Position = UDim2.new(0, 0, -0.0269058291, 0)
                Toggle.Size = UDim2.new(1, 0, 0, 69)

                UICorner_6.CornerRadius = UDim.new(0, 3)
                UICorner_6.Parent = Toggle

                Text1.Name = "Text1"
                Text1.Parent = Toggle
                Text1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Text1.BackgroundTransparency = 1.000
                Text1.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Text1.BorderSizePixel = 0
                Text1.Position = UDim2.new(0.0328638479, 0, 0, 0)
                Text1.Size = UDim2.new(1, 0, 0, 29)
                Text1.Font = Enum.Font.FredokaOne
                Text1.Text = Text
                Text1.TextColor3 = Color3.fromRGB(255, 255, 255)
                Text1.TextSize = 14.000
                Text1.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                Text1.TextWrapped = true
                Text1.TextXAlignment = Enum.TextXAlignment.Left

                Text2.Name = "Text2"
                Text2.Parent = Toggle
                Text2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Text2.BackgroundTransparency = 1.000
                Text2.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Text2.BorderSizePixel = 0
                Text2.Position = UDim2.new(0.0281690136, 0, 0.420289844, 0)
                Text2.Size = UDim2.new(0, 175, 0, 40)
                Text2.Font = Enum.Font.Highway
                Text2.Text = Text1.Text .." = false"
                Text2.TextColor3 = Color3.fromRGB(132, 132, 132)
                Text2.TextSize = 12.000
                Text2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
                Text2.TextWrapped = true
                Text2.TextXAlignment = Enum.TextXAlignment.Left

                TextButton.Parent = Toggle
                TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextButton.BackgroundTransparency = 1.000
                TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
                TextButton.BorderSizePixel = 0
                TextButton.Position = UDim2.new(0.64319247, 10, 0.427115828, 0)
                TextButton.Size = UDim2.new(0, 76, 0, 39)
                TextButton.Font = Enum.Font.SourceSans
                TextButton.Text = ""
                TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                TextButton.TextSize = 14.000

                MainToggle.Name = "Main Toggle"
                MainToggle.Parent = Toggle
                MainToggle.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
                MainToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
                MainToggle.BorderSizePixel = 0
                MainToggle.Position = UDim2.new(0.676056325, 10, 0.536231875, 0)
                MainToggle.Size = UDim2.new(0, 59, 0, 24)

                UICorner_7.Parent = MainToggle

                Frame.Parent = MainToggle
                Frame.AnchorPoint = Vector2.new(0.5, 0.5)
                Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
                Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Frame.BorderSizePixel = 0
                Frame.Position = UDim2.new(0.200000003, 0, 0.5, 0)
                Frame.Size = UDim2.new(0, 20, 0, 20)

                UICorner_8.CornerRadius = UDim.new(0, 100)
                UICorner_8.Parent = Frame
                
                local Toggle_D = false
                if Value == true then
                    Toggle_D = true
                    Frame.BackgroundColor3 = Color3.fromRGB(0, 255, 4)
                    TweenService:Create(
                        Frame,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {Position = UDim2.new(0.75, 0, 0.5, 0)}
                    ):Play()
                    Text2.Text = Text1.Text .." = True"
                    callback(true)
                end

                TextButton.MouseButton1Click:Connect(function()
                    if Toggle_D == false then
                        Toggle_D = true
                        Frame.BackgroundColor3 = Color3.fromRGB(0, 255, 4)
                        TweenService:Create(
                            Frame,
                            TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {Position = UDim2.new(0.75, 0, 0.5, 0)}
                        ):Play()
                        Text2.Text = Text1.Text .." = True"
                    else
                        Toggle_D = false
                        Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
                        TweenService:Create(
                            Frame,
                            TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                            {Position = UDim2.new(0.2, 0, 0.5, 0)}
                        ):Play()
                        Text2.Text = Text1.Text .." = False"
                    end
                    pcall(callback,Toggle_D)
                end)
            end
            function function_main:Button(Text,callback)
                local Button = Instance.new("Frame")
                local UICorner_12 = Instance.new("UICorner")
                local ClickButton = Instance.new("TextButton")
                local UICorner_13 = Instance.new("UICorner")

                Button.Name = "Button"
                Button.Parent = SectionContainer
                Button.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Button.BorderSizePixel = 0
                Button.Position = UDim2.new(0, 0, 0.318385661, 0)
                Button.Size = UDim2.new(1, 0, 0, 42)

                UICorner_12.CornerRadius = UDim.new(0, 3)
                UICorner_12.Parent = Button

                ClickButton.Name = "ClickButton"
                ClickButton.Parent = Button
                ClickButton.AnchorPoint = Vector2.new(0.5, 0.5)
                ClickButton.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
                ClickButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
                ClickButton.BorderSizePixel = 0
                ClickButton.Position = UDim2.new(0.5, 0, 0.5, 0)
                ClickButton.Size = UDim2.new(0.95, 0, 0, 30)
                ClickButton.Font = Enum.Font.FredokaOne
                ClickButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                ClickButton.TextSize = 14.000
                ClickButton.Text = Text
                ClickButton.TextWrapped = true

                UICorner_13.CornerRadius = UDim.new(0, 3)
                UICorner_13.Parent = ClickButton

                ClickButton.MouseButton1Click:Connect(function()
                    ClickButton.TextSize = 0
                    TweenService:Create(
                        ClickButton,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextSize = 12}
                    ):Play()
                    callback()
                end)
            end
            function function_main:Label(text)
                local textas = {}
                local Label = Instance.new("Frame")
                local Text = Instance.new("TextLabel")
                Label.Name = "Label"
                Label.Parent = SectionContainer
                Label.AnchorPoint = Vector2.new(0.5, 0.5)
                Label.BackgroundTransparency = 1.000
                Label.Size = UDim2.new(1, 0, 0, 30)

                Text.Name = "Text"
                Text.Parent = Label
                Text.AnchorPoint = Vector2.new(0.5, 0.5)
                Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Text.BackgroundTransparency = 1.000
                Text.Position = UDim2.new(0.5, 0, 0.5, 0)
                Text.Size = UDim2.new(0, 53, 0, 12)
                Text.ZIndex = 16
                Text.Font = Enum.Font.GothamBold
                Text.Text = text
                Text.TextColor3 = Color3.fromRGB(255, 255, 255)
                Text.TextSize = 12.000
                function textas.Refresh(newtext)
                    Text.Text = newtext
                end
                return textas
            end
            function function_main:MultiDropdown(Name, list, default, callback)
                local Dropfunc = {}

                local MainDropDown = Instance.new("Frame")
                local UICorner_7 = Instance.new("UICorner")
                local MainDropDown_2 = Instance.new("Frame")
                local UICorner_8 = Instance.new("UICorner")
                local v = Instance.new("TextButton")
                local Text_2 = Instance.new("TextLabel")
                local ImageButton = Instance.new("ImageButton")
                local Scroll_Items = Instance.new("ScrollingFrame")
                local UIListLayout_3 = Instance.new("UIListLayout")
                local UIPadding_3 = Instance.new("UIPadding")

                MainDropDown.Name = "MainDropDown"
                MainDropDown.Parent = SectionContainer
                MainDropDown.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
                MainDropDown.BackgroundTransparency = 0
                MainDropDown.BorderSizePixel = 0
                MainDropDown.ClipsDescendants = true
                MainDropDown.Size = UDim2.new(1, 0, 0, 35)
                MainDropDown.ZIndex = 16

                UICorner_7.CornerRadius = UDim.new(0, 4)
                UICorner_7.Parent = MainDropDown

                MainDropDown_2.Name = "MainDropDown"
                MainDropDown_2.Parent = MainDropDown
                MainDropDown_2.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                MainDropDown_2.BackgroundTransparency = 0
                MainDropDown_2.BorderSizePixel = 0
                MainDropDown_2.ClipsDescendants = true
                MainDropDown_2.Size = UDim2.new(1, 0, 0, 30)
                MainDropDown_2.ZIndex = 16

                UICorner_8.CornerRadius = UDim.new(0, 4)
                UICorner_8.Parent = MainDropDown_2

                v.Name = "v"
                v.Parent = MainDropDown_2
                v.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                v.BackgroundTransparency = 1.000
                v.BorderSizePixel = 0
                v.Size = UDim2.new(1, 0, 1, 0)
                v.ZIndex = 16
                v.AutoButtonColor = false
                v.Font = Enum.Font.GothamBold
                v.Text = ""
                v.TextColor3 = Color3.fromRGB(255, 255, 255)
                v.TextSize = 12.000
                function getpro()
                    if default then
                        for i, v in next, default do
                            if table.find(list, v) then
                                callback(default)
                                return Name .. " : " .. table.concat(default, ", ")
                            else
                                return Name
                            end
                        end
                    else
                        return Name
                    end
                end

                Text_2.Name = "Text"
                Text_2.Parent = MainDropDown_2
                Text_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Text_2.BackgroundTransparency = 1.000
                Text_2.Position = UDim2.new(0, 10, 0, 10)
                Text_2.Size = UDim2.new(0, 62, 0, 12)
                Text_2.ZIndex = 16
                Text_2.Font = Enum.Font.GothamBold
                Text_2.Text = getpro()
                Text_2.TextColor3 = Color3.fromRGB(255, 255, 255)
                Text_2.TextSize = 12.000
                Text_2.TextXAlignment = Enum.TextXAlignment.Left

                ImageButton.Parent = MainDropDown_2
                ImageButton.AnchorPoint = Vector2.new(0, 0.5)
                ImageButton.BackgroundTransparency = 1.000
                ImageButton.Position = UDim2.new(1, -25, 0.5, 0)
                ImageButton.Size = UDim2.new(0, 12, 0, 12)
                ImageButton.ZIndex = 16
                ImageButton.Image = "http://www.roblox.com/asset/?id=6282522798"
                local DropTable = {}
                Scroll_Items.Name = "Scroll_Items"
                Scroll_Items.Parent = MainDropDown
                Scroll_Items.Active = true
                Scroll_Items.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Scroll_Items.BackgroundTransparency = 1.000
                Scroll_Items.BorderSizePixel = 0
                Scroll_Items.Position = UDim2.new(0, 0, 0, 35)
                Scroll_Items.Size = UDim2.new(1, 0, 1, -35)
                Scroll_Items.ZIndex = 16
                Scroll_Items.CanvasSize = UDim2.new(0, 0, 0, 265)
                Scroll_Items.ScrollBarThickness = 0

                UIListLayout_3.Parent = Scroll_Items
                UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout_3.Padding = UDim.new(0, 5)
                UIListLayout_2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
                function()
                    Scroll_Items.CanvasSize = UDim2.new(1, 0, 0, UIListLayout_2.AbsoluteContentSize.Y+40)
                end
                )
                UIPadding_3.Parent = Scroll_Items
                UIPadding_3.PaddingLeft = UDim.new(0, 10)
                UIPadding_3.PaddingTop = UDim.new(0, 5)

                function Dropfunc:TogglePanel(state)
                    TweenService:Create(
                        MainDropDown,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Size = state and UDim2.new(1, 0, 0, 200) or UDim2.new(1, 0, 0, 30)}
                    ):Play()
                    TweenService:Create(
                        ImageButton,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = state and 180 or 0}
                    ):Play()
                end
                local Tof = false
                ImageButton.MouseButton1Click:Connect(
                    function()
                        Tof = not Tof
                        Dropfunc:TogglePanel(Tof)
                    end
                )
                v.MouseButton1Click:Connect(
                    function()
                        Tof = not Tof
                        Dropfunc:TogglePanel(Tof)
                    end
                )
                function Dropfunc:Add(Text)
                    local _5 = Instance.new("TextButton")
                    local UICorner_9 = Instance.new("UICorner")
                    _5.Name = Text
                    _5.Parent = Scroll_Items
                    _5.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                    _5.BorderSizePixel = 0
                    _5.ClipsDescendants = true
                    _5.Size = UDim2.new(1, -10, 0, 30)
                    _5.ZIndex = 17
                    _5.AutoButtonColor = false
                    _5.Font = Enum.Font.GothamBold
                    _5.Text = Text
                    _5.TextColor3 = Color3.fromRGB(255, 255, 255)
                    _5.TextSize = 12.000

                    UICorner_9.CornerRadius = UDim.new(0, 4)
                    UICorner_9.Parent = _5
                    _5.MouseButton1Click:Connect(
                        function()
                            if not table.find(DropTable, Text) then
                                table.insert(DropTable, Text)
                                callback(DropTable, Text)
                                Text_2.Text = Name .. " : " .. table.concat(DropTable, ", ")
                                TweenService:Create(
                                    _5,
                                    TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(255, 0, 0)}
                                ):Play()
                            else
                                TweenService:Create(
                                    _5,
                                    TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(255, 255, 255)}
                                ):Play()
                                for i2, v2 in pairs(DropTable) do
                                    if v2 == Text then
                                        table.remove(DropTable, i2)
                                        Text_2.Text = Name .. " : " .. table.concat(DropTable, ", ")
                                    end
                                end
                                callback(DropTable, Text)
                            end
                        end
                    )
                end
                function Dropfunc:Clear()
                    for i, v in next, Scroll_Items:GetChildren() do
                        if v:IsA("TextButton")  then 
                            v:Destroy()

                        end
                    end 
                end

                for i, v in next, list do
                    Dropfunc:Add(v)
                end
                return Dropfunc
            end
            function function_main:Dropdown(Name, list, default, callback)
                local Dropfunc = {}

                local MainDropDown = Instance.new("Frame")
                local UICorner_7 = Instance.new("UICorner")
                local MainDropDown_2 = Instance.new("Frame")
                local UICorner_8 = Instance.new("UICorner")
                local v = Instance.new("TextButton")
                local Text_2 = Instance.new("TextLabel")
                local ImageButton = Instance.new("ImageButton")
                local Scroll_Items = Instance.new("ScrollingFrame")
                local UIListLayout_3 = Instance.new("UIListLayout")
                local UIPadding_3 = Instance.new("UIPadding")

                MainDropDown.Name = "MainDropDown"
                MainDropDown.Parent = SectionContainer
                MainDropDown.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
                MainDropDown.BackgroundTransparency = 0
                MainDropDown.BorderSizePixel = 0
                MainDropDown.ClipsDescendants = true
                MainDropDown.Size = UDim2.new(1, 0, 0, 35)
                MainDropDown.ZIndex = 16

                UICorner_7.CornerRadius = UDim.new(0, 4)
                UICorner_7.Parent = MainDropDown

                MainDropDown_2.Name = "MainDropDown"
                MainDropDown_2.Parent = MainDropDown
                MainDropDown_2.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                MainDropDown_2.BackgroundTransparency = 0
                MainDropDown_2.BorderSizePixel = 0
                MainDropDown_2.ClipsDescendants = true
                MainDropDown_2.Size = UDim2.new(1, 0, 0, 30)
                MainDropDown_2.ZIndex = 16

                UICorner_8.CornerRadius = UDim.new(0, 4)
                UICorner_8.Parent = MainDropDown_2

                v.Name = "v"
                v.Parent = MainDropDown_2
                v.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                v.BackgroundTransparency = 1.000
                v.BorderSizePixel = 0
                v.Size = UDim2.new(1, 0, 1, 0)
                v.ZIndex = 16
                v.AutoButtonColor = false
                v.Font = Enum.Font.GothamBold
                v.Text = ""
                v.TextColor3 = Color3.fromRGB(255, 255, 255)
                v.TextSize = 12.000
                function getpro()
                    if default then
                        if table.find(list, default) then
                            return Name .. " : " .. default
                        else
                            return Name .. " : "
                        end
                    else
                        return Name .. " : "
                    end
                end
                Text_2.Name = "Text"
                Text_2.Parent = MainDropDown_2
                Text_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Text_2.BackgroundTransparency = 1.000
                Text_2.Position = UDim2.new(0, 10, 0, 10)
                Text_2.Size = UDim2.new(0, 62, 0, 12)
                Text_2.ZIndex = 16
                Text_2.Font = Enum.Font.GothamBold
                Text_2.Text = getpro()
                Text_2.TextColor3 = Color3.fromRGB(255, 255, 255)
                Text_2.TextSize = 12.000
                Text_2.TextXAlignment = Enum.TextXAlignment.Left

                ImageButton.Parent = MainDropDown_2
                ImageButton.AnchorPoint = Vector2.new(0, 0.5)
                ImageButton.BackgroundTransparency = 1.000
                ImageButton.Position = UDim2.new(1, -25, 0.5, 0)
                ImageButton.Size = UDim2.new(0, 12, 0, 12)
                ImageButton.ZIndex = 16
                ImageButton.Image = "http://www.roblox.com/asset/?id=6282522798"

                Scroll_Items.Name = "Scroll_Items"
                Scroll_Items.Parent = MainDropDown
                Scroll_Items.Active = true
                Scroll_Items.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Scroll_Items.BackgroundTransparency = 1.000
                Scroll_Items.BorderSizePixel = 0
                Scroll_Items.Position = UDim2.new(0, 0, 0, 35)
                Scroll_Items.Size = UDim2.new(1, 0, 1, -35)
                Scroll_Items.ZIndex = 16
                Scroll_Items.CanvasSize = UDim2.new(0, 0, 0, 265)
                Scroll_Items.ScrollBarThickness = 0

                UIListLayout_3.Parent = Scroll_Items
                UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout_3.Padding = UDim.new(0, 5)
                UIListLayout_2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(
                function()
                    Scroll_Items.CanvasSize = UDim2.new(1, 0, 0, UIListLayout_2.AbsoluteContentSize.Y+40)
                end
                )
                UIPadding_3.Parent = Scroll_Items
                UIPadding_3.PaddingLeft = UDim.new(0, 10)
                UIPadding_3.PaddingTop = UDim.new(0, 5)

                function Dropfunc:TogglePanel(state)
                    TweenService:Create(
                        MainDropDown,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Size = state and UDim2.new(1, 0, 0, 299) or UDim2.new(1, 0, 0, 30)}
                    ):Play()
                    TweenService:Create(
                        ImageButton,
                        TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Rotation = state and 180 or 0}
                    ):Play()
                end
                local Tof = false
                ImageButton.MouseButton1Click:Connect(
                    function()
                        Tof = not Tof
                        Dropfunc:TogglePanel(Tof)
                    end
                )
                v.MouseButton1Click:Connect(
                    function()
                        Tof = not Tof
                        Dropfunc:TogglePanel(Tof)
                    end
                )
                function Dropfunc:Clear()
                    for i, v in next, Scroll_Items:GetChildren() do
                        if v:IsA("TextButton") then 
                            v:Destroy()
                        end
                    end
                end

                function Dropfunc:Add(Text)
                    local _5 = Instance.new("TextButton")
                    local UICorner_9 = Instance.new("UICorner")
                    _5.Name = Text
                    _5.Parent = Scroll_Items
                    _5.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                    _5.BorderSizePixel = 0
                    _5.ClipsDescendants = true
                    _5.Size = UDim2.new(1, -10, 0, 30)
                    _5.ZIndex = 17
                    _5.AutoButtonColor = false
                    _5.Font = Enum.Font.GothamBold
                    _5.Text = Text
                    _5.TextColor3 = Color3.fromRGB(255, 255, 255)
                    _5.TextSize = 12.000

                    UICorner_9.CornerRadius = UDim.new(0, 4)
                    UICorner_9.Parent = _5

                    _5.MouseButton1Click:Connect(
                        function()
                            if _x == nil then
                                Tof = false
                                Dropfunc:TogglePanel(Tof)
                                callback(Text)
                                Text_2.Text = Name .. " : "..Text
                                _x = nil
                            end
                        end
                    )
                end
                for i, v in next, list do
                    Dropfunc:Add(v)
                end
                return Dropfunc
            end
            function function_main:Slider(text,floor,min,max,de,callback)
                local SliderFrame = Instance.new("Frame")
                local LabelNameSlider = Instance.new("TextLabel")
                local ShowValueFrame = Instance.new("Frame")
                local CustomValue = Instance.new("TextBox")
                local ShowValueFrameUICorner = Instance.new("UICorner")
                local ValueFrame = Instance.new("Frame")
                local ValueFrameUICorner = Instance.new("UICorner")
                local PartValue = Instance.new("Frame")
                local PartValueUICorner = Instance.new("UICorner")
                local MainValue = Instance.new("Frame")
                local MainValueUICorner = Instance.new("UICorner")
                local sliderfunc = {}

                SliderFrame.Name = text
                SliderFrame.Parent = SectionContainer
                SliderFrame.BackgroundTransparency = 0
                SliderFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                SliderFrame.Position = UDim2.new(0.109489053, 0, 0.708609283, 0)
                SliderFrame.Size = UDim2.new(1, 0, 0, 45)

                local UIStroke96 = Instance.new("UIStroke")
                UIStroke96.Thickness = 1.2
                UIStroke96.Parent = SliderFrame
                UIStroke96.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                UIStroke96.LineJoinMode = Enum.LineJoinMode.Round
                UIStroke96.Color = Color3.fromRGB(255, 0, 0)
                UIStroke96.Transparency = 0

                LabelNameSlider.Name = "LabelNameSlider"
                LabelNameSlider.Parent = SliderFrame
                LabelNameSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                LabelNameSlider.BackgroundTransparency = 1.000
                LabelNameSlider.Position = UDim2.new(0.0729926974, 0, 0.0396823473, 0)
                LabelNameSlider.Size = UDim2.new(0, 182, 0, 25)
                LabelNameSlider.Font = Enum.Font.GothamBold
                LabelNameSlider.Text = tostring(text)
                LabelNameSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
                LabelNameSlider.TextSize = 11.000
                LabelNameSlider.TextXAlignment = Enum.TextXAlignment.Left

                ShowValueFrame.Name = "ShowValueFrame"
                ShowValueFrame.Parent = SliderFrame
                ShowValueFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                ShowValueFrame.Position = UDim2.new(0.733576655, 0, 0.0656082779, 0)
                ShowValueFrame.Size = UDim2.new(0, 58, 0, 21)

                CustomValue.Name = "CustomValue"
                CustomValue.Parent = ShowValueFrame
                CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
                CustomValue.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
                CustomValue.Position = UDim2.new(0.5, 0, 0.5, 0)
                CustomValue.Size = UDim2.new(0, 55, 0, 21)
                CustomValue.Font = Enum.Font.GothamBold
                CustomValue.Text = ""
                CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)
                CustomValue.TextSize = 11.000

                local UIStroke965 = Instance.new("UIStroke")
                UIStroke965.Thickness = 1.2
                UIStroke965.Parent = CustomValue
                UIStroke965.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                UIStroke965.LineJoinMode = Enum.LineJoinMode.Round
                UIStroke965.Color = Color3.fromRGB(255, 0, 0)
                UIStroke965.Transparency = 0.03

                SliderFrame.MouseEnter:Connect(function()
                    TweenService:Create(
                        UIStroke965,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {Transparency = 0.5}
                    ):Play()
                end)

                SliderFrame.MouseLeave:Connect(function()
                    TweenService:Create(
                        UIStroke965,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {Transparency = 0.10}
                    ):Play()
                end)

                ShowValueFrameUICorner.CornerRadius = UDim.new(0, 4)
                ShowValueFrameUICorner.Name = "ShowValueFrameUICorner"
                ShowValueFrameUICorner.Parent = ShowValueFrame

                ValueFrame.Name = "ValueFrame"
                ValueFrame.Parent = SliderFrame
                ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                ValueFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                ValueFrame.Position = UDim2.new(0.5, 0, 0.8, 0)
                ValueFrame.Size = UDim2.new(0, 200, 0, 5)

                ValueFrameUICorner.CornerRadius = UDim.new(0, 30)
                ValueFrameUICorner.Name = "ValueFrameUICorner"
                ValueFrameUICorner.Parent = ValueFrame

                PartValue.Name = "PartValue"
                PartValue.Parent = ValueFrame
                PartValue.AnchorPoint = Vector2.new(0.5, 0.5)
                PartValue.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                PartValue.BackgroundTransparency = 1.000
                PartValue.Position = UDim2.new(0.5, 0, 0.8, 0)
                PartValue.Size = UDim2.new(0, 200, 0, 5)

                PartValueUICorner.CornerRadius = UDim.new(0, 30)
                PartValueUICorner.Name = "PartValueUICorner"
                PartValueUICorner.Parent = PartValue

                MainValue.Name = "MainValue"
                MainValue.Parent = ValueFrame
                MainValue.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)
                MainValue.BorderSizePixel = 0

                MainValueUICorner.CornerRadius = UDim.new(0, 30)
                MainValueUICorner.Name = "MainValueUICorner"
                MainValueUICorner.Parent = MainValue


                local ConneValue = Instance.new("Frame")
                ConneValue.Name = "ConneValue"
                ConneValue.Parent = PartValue
                ConneValue.AnchorPoint = Vector2.new(0.7, 0.7)
                ConneValue.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.5,0, 0)
                ConneValue.Size = UDim2.new(0, 10, 0, 10)
                ConneValue.BorderSizePixel = 0
    
                local UICorner = Instance.new("UICorner")
                UICorner.CornerRadius = UDim.new(0, 10)
                UICorner.Parent = ConneValue


                if floor == true then
                    CustomValue.Text =  tostring(de and string.format("%0.2f",(de / max) * (max - min) + min) or 0)
                else
                    CustomValue.Text =  tostring(de and math.floor((de / max) * (max - min) + min) or 0)
                end

                local function move(input)
                    LWADGAW = true
                    local pos =
                        UDim2.new(
                            math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
                            0,
                            0.5,
                            0
                        )
                    local pos1 =
                        UDim2.new(
                            math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
                            0,
                            0,
                            5
                        )
                    MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)
                    ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)
                    if floor == true then
                        local value = string.format("%.0f",((pos.X.Scale * max) / max) * (max - min) + min)
                        CustomValue.Text = tostring(value)
                        callback(value)
                    else
                        local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
                        CustomValue.Text = tostring(value)
                        callback(value)
                    end
                    wait(0.5)
                    LWADGAW = false
                end
                local dragging = false
                ConneValue.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true
                        end
                    end)
                ConneValue.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false
                        end
                    end)
                SliderFrame.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true
                        end
                    end)
                SliderFrame.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false
                        end
                    end)
                ValueFrame.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true
                        end
                    end)
                ValueFrame.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false
                        end
                    end)
                    game:GetService("UserInputService").InputChanged:Connect(function(input)
                        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                            move(input)
                        end
                    end)
                    CustomValue.FocusLost:Connect(function()
                        if CustomValue.Text == "" then
                            CustomValue.Text  = de
                        end
                        if  tonumber(CustomValue.Text) > max then
                            CustomValue.Text  = max
                        end
                        MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                        ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.6, 0) , "Out", "Sine", 0.2, true)
                        if floor == true then
                            CustomValue.Text = tostring(CustomValue.Text and string.format("%.0f",(CustomValue.Text / max) * (max - min) + min) )
                        else
                            CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                        end
                        pcall(callback, CustomValue.Text)
                    end)
                    
                    function sliderfunc:Update(value)
                        MainValue:TweenSize(UDim2.new((value or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                        ConneValue:TweenPosition(UDim2.new((value or 0)/max, 0.5, 0.5,0, 0) , "Out", "Sine", 0.2, true)
                        CustomValue.Text = value
                        pcall(function()
                            callback(value)
                        end)
                    end
                return sliderfunc
            end
            function function_main:Textbox(Name,Placeholder,callback)
                local Textbox = Instance.new("Frame")
                local UICorner_16 = Instance.new("UICorner")
                local Text_5 = Instance.new("TextLabel")
                local TextboxHoler = Instance.new("Frame")
                local UICorner_17 = Instance.new("UICorner")
                local HeadTitle = Instance.new("TextBox")

                Textbox.Name = Name
                Textbox.Parent = SectionContainer
                Textbox.BackgroundColor3 = Color3.fromRGB(1, 2, 3)
                Textbox.BackgroundTransparency = 0.700
                Textbox.BorderSizePixel = 0
                Textbox.ClipsDescendants = true
                Textbox.Size = UDim2.new(1, 0, 0, 60)
                Textbox.ZIndex = 16

                UICorner_16.CornerRadius = UDim.new(0, 4)
                UICorner_16.Parent = Textbox

                Text_5.Name = "Text"
                Text_5.Parent = Textbox
                Text_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Text_5.BackgroundTransparency = 1.000
                Text_5.Position = UDim2.new(0, 10, 0, 10)
                Text_5.Size = UDim2.new(0, 43, 0, 12)
                Text_5.ZIndex = 16
                Text_5.Font = Enum.Font.GothamBold
                Text_5.Text = Name
                Text_5.TextColor3 = Color3.fromRGB(255, 0, 0)
                Text_5.TextSize = 11.000
                Text_5.TextXAlignment = Enum.TextXAlignment.Left

                TextboxHoler.Name = "TextboxHoler"
                TextboxHoler.Parent = Textbox
                TextboxHoler.AnchorPoint = Vector2.new(0.5, 0.5)
                TextboxHoler.BackgroundColor3 = Color3.fromRGB(13, 13, 15)
                TextboxHoler.BackgroundTransparency = 1.000
                TextboxHoler.BorderSizePixel = 0
                TextboxHoler.Position = UDim2.new(0.5, 0, 0.5, 13)
                TextboxHoler.Size = UDim2.new(0.970000029, 0, 0, 30)

                UICorner_17.CornerRadius = UDim.new(0, 8)
                UICorner_17.Parent = TextboxHoler

                HeadTitle.Name = "HeadTitle"
                HeadTitle.Parent = TextboxHoler
                HeadTitle.AnchorPoint = Vector2.new(0.5, 0.5)
                HeadTitle.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
                HeadTitle.BackgroundTransparency = 1.000
                HeadTitle.BorderSizePixel = 0
                HeadTitle.ClipsDescendants = true
                HeadTitle.Position = UDim2.new(0.5, 3, 0.5, 0)
                HeadTitle.Size = UDim2.new(0.949999988, 0, 0, 25)
                HeadTitle.ZIndex = 16
                HeadTitle.Font = Enum.Font.GothamBold
                HeadTitle.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
                HeadTitle.PlaceholderText = Placeholder
                HeadTitle.Text = ""
                HeadTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
                HeadTitle.TextSize = 13.000
                HeadTitle.TextXAlignment = Enum.TextXAlignment.Center
                
                local ButtonColor44 = Instance.new("UIStroke")
                
                ButtonColor44.Thickness = 0.9
                ButtonColor44.Name = ""
                ButtonColor44.Parent = HeadTitle
                ButtonColor44.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                ButtonColor44.LineJoinMode = Enum.LineJoinMode.Round
                ButtonColor44.Color = Color3.fromRGB(255, 0, 0)
                ButtonColor44.Transparency = 0.2

                Textbox.MouseEnter:Connect(function()
                    TweenService:Create(
                        ButtonColor44,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {Thickness = 1}
                    ):Play()
                    TweenService:Create(
                        ButtonColor44,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {Transparency = 0.5}
                    ):Play()
                end)

                Textbox.MouseLeave:Connect(function()
                    TweenService:Create(
                        ButtonColor44,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {Thickness = 0.9}
                    ):Play()
                    TweenService:Create(
                        ButtonColor44,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {Transparency = 0.2}
                    ):Play()
                end)
                
                HeadTitle.FocusLost:Connect(
                function(ep)
                    if ep then
                        if #HeadTitle.Text > 0 then
                            callback(HeadTitle.Text)
                            HeadTitle.Text = HeadTitle.Text
                        end
                    end
                end)
            end
            return function_main
        end
        return sections
    end
    return addtap
end
--return library

local Win = library:Evil()
local tab1 = Win:CraftTab('Main',12870309893)
local page1 = tab1:CraftPage('Main',1)

page1:Label('Parry')

_G.Distance = 45
page1:Toggle('Auto Parry',_G.AutoFarm,function(value) -- Mobile
    _G.AutoFarm = value
    local LocalPlayer = game:GetService("Players").LocalPlayer
    game:GetService("Workspace").Balls.ChildAdded:Connect(function(child)
        local trackTask = task.spawn(function()
            local ball = child
            while task.wait() do
                if string.find(ball.BrickColor.Name:lower(), "red") and _G.AutoFarm then
                    while LocalPlayer:DistanceFromCharacter(ball.CFrame.Position) > _G.Distance do
                        task.wait()
                    end
                    local ReplicatedStorage = game:GetService("ReplicatedStorage")
                    ReplicatedStorage.Remotes.ParryButtonPress:Fire()
                end
            end
        end)
        child.Destroying:Connect(function()
            task.cancel(trackTask)
        end)
    end)
end)

page1:Slider("Select Distance Parry",true,0,100,_G.Distance,function(value)
    _G.Distance = value
end)