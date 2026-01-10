local _return = {}

local plr = game.Players.LocalPlayer
local char = plr.Character

plr.CharacterAdded:Connect(function(newchar)
	char = newchar
end)

local active = true

local firing = {
	["Close All Sections"] = Instance.new("BindableEvent", game.ReplicatedStorage),
}

_return.CreateWindow = function(name_window: string)
	local _1return = {}
	---------------------------
	--CREATE
	---------------------------
	local gui = Instance.new("ScreenGui", game:GetService("CoreGui") or game.Players.LocalPlayer.PlayerGui)
	local Main_frame = Instance.new("Frame", gui)
	local Sections_scroll_buttons = Instance.new("ScrollingFrame", Main_frame)
	local Sections_folder_frames = Instance.new("Folder", Main_frame)
	local Name_textLabel = Instance.new("TextLabel", Main_frame)
	local ui_grid_1 = Instance.new("UIGridLayout", Sections_scroll_buttons)
	local line_1 = Instance.new("Frame", Main_frame)
	---------------------------
	--EDITING
	---------------------------
	gui.ResetOnSpawn = false
	gui.IgnoreGuiInset = true
	gui.Name = name_window
	---------------------------
	Sections_scroll_buttons.Name = "Sections_scroll_buttons"
	Sections_scroll_buttons.Size = UDim2.new(0.22, 0, 0.9, 0)
	Sections_scroll_buttons.Position = UDim2.new(0, 0, 0.1, 0)
	Sections_scroll_buttons.BorderSizePixel = 0
	Sections_scroll_buttons.BackgroundTransparency = 1
	Sections_scroll_buttons.ScrollBarImageTransparency = 1
	game:GetService("RunService").Heartbeat:Connect(function()
		Sections_scroll_buttons.CanvasSize = UDim2.new(0, 0, 0, ui_grid_1.AbsoluteContentSize.Y)
	end)
	---------------------------
	Sections_folder_frames.Name = "Sections_folder_frames"
	---------------------------
	ui_grid_1.CellSize = UDim2.new(0.85, 0, 0.1, 0)
	ui_grid_1.CellPadding = UDim2.new(0, 0, 0, 3)
	ui_grid_1.HorizontalAlignment = Enum.HorizontalAlignment.Center
	---------------------------
	Main_frame.Size = UDim2.new(0.24, 0, 0.28, 0)
	Main_frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Main_frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main_frame.BorderSizePixel = 2
	Main_frame.BorderColor3 = Color3.fromRGB(67, 67, 67)
	Main_frame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	Main_frame.Active = true
	Main_frame.Interactable = true
	Main_frame.Draggable = true
	---------------------------
	Name_textLabel.BorderSizePixel = 0
	Name_textLabel.Size = UDim2.new(0.7, 0, 0.1, 0)
	Name_textLabel.BackgroundTransparency = 1
	Name_textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	Name_textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	Name_textLabel.TextStrokeTransparency = 0
	Name_textLabel.RichText = true
	Name_textLabel.TextWrapped = true
	Name_textLabel.TextXAlignment = Enum.TextXAlignment.Left
	Name_textLabel.TextScaled = true
	Name_textLabel.Font = Enum.Font.RobotoMono
	Name_textLabel.Text = name_window
	---------------------------
	line_1.Name = "Line"
	line_1.Size = UDim2.new(1, 0, 0, 2)
	line_1.Position = UDim2.new(0, 0, 0.1, -2)
	line_1.BorderSizePixel = 0
	line_1.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
	---------------------------
	--FUNCTIONS
	---------------------------

	-- adding section
	_1return.Section = function(name_section: string)
		local _2return = {}
		local section_button = Instance.new("TextButton", Sections_scroll_buttons)
		local section_frame = Instance.new("Frame", Sections_folder_frames)
		local Right, Left, Middle = Instance.new("ScrollingFrame", section_frame), Instance.new("ScrollingFrame", section_frame), Instance.new("ScrollingFrame", section_frame)
		local grid_1, grid_2, grid_3 = Instance.new("UIGridLayout", Left), Instance.new("UIGridLayout", Middle), Instance.new("UIGridLayout", Right)
		-----------------------
		section_button.Name = name_section
		section_button.BorderSizePixel = 1
		section_button.BorderColor3 = Color3.fromRGB(67, 67, 67)
		section_button.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
		section_button.TextColor3 = Color3.fromRGB(255, 255, 255)
		section_button.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
		section_button.TextStrokeTransparency = 0
		section_button.RichText = true
		section_button.TextWrapped = true
		section_button.TextXAlignment = Enum.TextXAlignment.Left
		section_button.TextScaled = true
		section_button.Font = Enum.Font.RobotoMono
		section_button.Text = name_section
		-----------------------
		section_frame.Name = name_section
		section_frame.Size = UDim2.new(0.75, 0, 0.9, 0)
		section_frame.Position = UDim2.new(0.25, 0, 0.1, 0)
		section_frame.BorderSizePixel = 0
		section_frame.BackgroundTransparency = 0
		section_frame.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
		-----------------------
		Right.Size = UDim2.new(0.333, 0, 1, 0)
		Right.BorderSizePixel = 0
		Right.Position = UDim2.new(0.666, 0, 0, 0)
		Right.BackgroundTransparency = 1
		-----------------------
		grid_1.CellSize = UDim2.new(0.9, 0, 0.1, 0);
		grid_1.CellPadding = UDim2.new(0, 0, 0, 5);
		grid_1.HorizontalAlignment = Enum.HorizontalAlignment.Center
		-----------------------
		Left.Size = UDim2.new(0.333, 0, 1, 0)
		Left.BorderSizePixel = 0
		Left.Position = UDim2.new(0, 0, 0, 0)
		Left.BackgroundTransparency = 1
		-----------------------
		grid_2.CellSize = UDim2.new(0.9, 0, 0.1, 0);
		grid_2.CellPadding = UDim2.new(0, 0, 0, 5);
		grid_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
		-----------------------
		Middle.Size = UDim2.new(0.333, 0, 1, 0)
		Middle.BorderSizePixel = 0
		Middle.Position = UDim2.new(0.333, 0, 0, 0)
		Middle.BackgroundTransparency = 1
		-----------------------
		grid_3.CellSize = UDim2.new(0.9, 0, 0.1, 0);
		grid_3.CellPadding = UDim2.new(0, 0, 0, 5);
		grid_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
		-----------------------
		game:GetService("RunService").Heartbeat:Connect(function()
			Left.CanvasSize = UDim2.new(0, 0, 0, grid_1.AbsoluteContentSize.Y);
			Middle.CanvasSize = UDim2.new(0, 0, 0, grid_2.AbsoluteContentSize.Y);
			Right.CanvasSize = UDim2.new(0, 0, 0, grid_3.AbsoluteContentSize.Y);
		end)
		-----------------------
		firing["Close All Sections"].Event:Connect(function()
			section_frame.Visible = false
		end)
		-----------------------
		local function OnActive1()
			firing["Close All Sections"]:Fire()
			game:GetService("RunService").Heartbeat:Wait()
			section_frame.Visible = true
		end
		-----------------------
		section_button.MouseButton1Click:Connect(OnActive1)
		section_button.TouchTap:Connect(OnActive1)
		local function InFrame(Button: TextButton, enum)
			if enum then
				if type(enum) == "string" then
					if enum == "l" then
						Button.Parent = Left
					elseif enum == "m" then
						Button.Parent = Middle
					elseif enum == "r" then
						Button.Parent = Right
					else
						local enum: string = enum
						task.spawn(function()
							error('Inspected "l"/"r"/"m" Get: '..string.upper(enum), 1)
						end)
					end
				else
					task.spawn(function()
						error("Inspected String for enum Variant, Get: "..string.upper(type(enum)), 1)
					end)
				end
			end
		end
		-----------------------
		_2return.ClickButton = function(enum, name: string, _function)
			if type(enum) ~= "nil" then
				local button = Instance.new("TextButton")
				InFrame(button, enum)
				button.Name = name;
				button.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
				button.BorderSizePixel = 0
				button.TextColor3 = Color3.fromRGB(255, 255, 255)
				button.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
				button.TextStrokeTransparency = 0
				button.RichText = true
				button.TextWrapped = true
				button.TextScaled = true
				button.Font = Enum.Font.RobotoMono
				button.Text = name
				local corner = Instance.new("UICorner", button)
				corner.CornerRadius = UDim.new(0, 5)
				button.MouseButton1Click:Connect(_function)
				button.TouchTap:Connect(_function)
				return button
			end
		end
		_2return.Text = function(enum, text: string)
			if type(enum) ~= "nil" then
				local button = Instance.new("TextLabel")
				InFrame(button, enum)
				button.Name = text;
				button.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
				button.BorderSizePixel = 0
				button.TextColor3 = Color3.fromRGB(255, 255, 255)
				button.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
				button.TextStrokeTransparency = 0
				button.RichText = true
				button.TextWrapped = true
				button.TextScaled = true
				button.Font = Enum.Font.RobotoMono
				button.Text = text
				local corner = Instance.new("UICorner", button)
				corner.CornerRadius = UDim.new(0, 5)
				return button
			end
		end
		_2return.Slide = function(enum, name: string, _function_)
			if type(enum) ~= "nil" then
				local on = false
				local button = Instance.new("TextButton")
				local corner1 = Instance.new("UICorner", button)
				local textL = Instance.new("TextLabel", button)
				local imaging_ = Instance.new("Frame", button)
				local corner2 = Instance.new("UICorner", imaging_)
				--
				InFrame(button, enum)
				--
				button.Name = name;
				button.BackgroundColor3 = Color3.fromRGB(115, 0, 0)
				button.BorderSizePixel = 0
				button.Text = ""
				--
				imaging_.Name = name;
				imaging_.BackgroundColor3 = Color3.fromRGB(218, 218, 218)
				imaging_.BorderSizePixel = 0
				imaging_.Size = UDim2.new(0, 0, 1, 0)
				imaging_.Size = UDim2.new(0, imaging_.AbsoluteSize.Y, 1, 0)
				--
				textL.Name = name;
				textL.Size = UDim2.new(1, 0, 0.75, 0)
				textL.Position = UDim2.new(0, 0, 0.5, 0)
				textL.BackgroundTransparency = 1
				textL.BorderSizePixel = 0
				textL.TextColor3 = Color3.fromRGB(255, 255, 255)
				textL.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
				textL.TextStrokeTransparency = 0
				textL.RichText = true
				textL.TextWrapped = true
				textL.TextScaled = true
				textL.Font = Enum.Font.RobotoMono
				textL.Text = name
				textL.ZIndex = 3
				--
				corner1.CornerRadius = UDim.new(99999, 0)
				--
				corner2.CornerRadius = UDim.new(99999, 0)
				--
				local function _function()
					imaging_.Size = UDim2.new(0, imaging_.AbsoluteSize.Y, 1, 0)
					on = not on
					if on == true then
						game:GetService("TweenService"):Create(imaging_, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
							Position = UDim2.new(0, (button.AbsoluteSize.X-imaging_.AbsoluteSize.X), 0, 0)}):Play()
						game:GetService("TweenService"):Create(button, TweenInfo.new(0.15, Enum.EasingStyle.Linear), {
							BackgroundColor3 = Color3.fromRGB(48, 239, 38)}):Play()
						_function_(true)
					else
						game:GetService("TweenService"):Create(imaging_, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
							Position = UDim2.new(0, 0, 0, 0)}):Play()
						game:GetService("TweenService"):Create(button, TweenInfo.new(0.15, Enum.EasingStyle.Linear), {
							BackgroundColor3 = Color3.fromRGB(115, 0, 0)}):Play()
						_function_(false)
					end
				end
				button.MouseButton1Click:Connect(_function)
				button.TouchTap:Connect(_function)
				return textL
			end
		end
		_2return.TextBox = function(enum, name: string, _function)
			if type(enum) ~= "nil" then
				local button = Instance.new("TextBox")
				local corner1 = Instance.new("UICorner", button)
				--
				InFrame(button, enum)
				--
				button.Name = name;
				button.BackgroundColor3 = Color3.fromRGB(65, 65, 65);
				button.BorderSizePixel = 0;
				button.TextColor3 = Color3.fromRGB(255, 255, 255);
				button.TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
				button.TextStrokeTransparency = 0;
				button.RichText = true;
				button.TextWrapped = true;
				button.TextScaled = true;
				button.Font = Enum.Font.RobotoMono;
				button.Text = name;
				button.ClearTextOnFocus = true
				--
				corner1.CornerRadius = UDim.new(0, 5)
				--
				button.FocusLost:Connect(function()
					_function(button.Text)
					button.Text = name
				end)
				return button
			end
		end
		_2return.Keybind = function(enum, name: string, StarterKeyCode: Enum.KeyCode, _function)
			if type(enum) ~= "nil" then
				local button = Instance.new("TextButton")
				local corner1 = Instance.new("UICorner", button)
				--
				InFrame(button, enum)
				--
				button.Name = name;
				button.BackgroundColor3 = Color3.fromRGB(65, 65, 65);
				button.BorderSizePixel = 0;
				button.TextColor3 = Color3.fromRGB(255, 255, 255);
				button.TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
				button.TextStrokeTransparency = 0;
				button.RichText = true;
				button.TextWrapped = true;
				button.TextScaled = true;
				button.Font = Enum.Font.RobotoMono;
				button.Text = name.."."..StarterKeyCode.Name;
				--
				corner1.CornerRadius = UDim.new(0, 5)
				--
				local function _active()
					local latest = game:GetService("UserInputService").InputBegan:Wait()
					if latest.KeyCode.EnumType == Enum.KeyCode then
						StarterKeyCode = latest.KeyCode
						button.Text = name.."."..StarterKeyCode.Name;
					end
				end
				game:GetService("UserInputService").InputBegan:Connect(function(i, g)
					if g then return end
					if i.KeyCode == StarterKeyCode and active then
						_function()
					end
				end)
				button.MouseButton1Click:Connect(_active)
				button.TouchTap:Connect(_active)
				return button
			end
		end
		_2return.PlayerSelect = function(enum, name: string, _function)
			if type(enum) ~= "nil" then
				local button = Instance.new("TextButton")
				local corner1 = Instance.new("UICorner", button)
				local uprv_scrolling_frame = Instance.new("ScrollingFrame", gui)
				local ui_grid_2 = Instance.new("UIGridLayout", uprv_scrolling_frame)
				local corner2 = Instance.new("UICorner", uprv_scrolling_frame)
				local open = false
				--
				InFrame(button, enum)
				--
				button.Name = name;
				button.BackgroundColor3 = Color3.fromRGB(65, 65, 65);
				button.BorderSizePixel = 0;
				button.TextColor3 = Color3.fromRGB(255, 255, 255);
				button.TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
				button.TextStrokeTransparency = 0;
				button.RichText = true;
				button.TextWrapped = true;
				button.TextScaled = true;
				button.Font = Enum.Font.RobotoMono;
				button.Text = name
				--
				corner1.CornerRadius = UDim.new(0, 5)
				--
				uprv_scrolling_frame.AnchorPoint = Vector2.new(1, 1)
				uprv_scrolling_frame.Size = UDim2.new(0, 0, 0, 0)
				uprv_scrolling_frame.Position = UDim2.new(1, 0, 1, 0)
				uprv_scrolling_frame.BorderSizePixel = 0
				uprv_scrolling_frame.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
				uprv_scrolling_frame.ScrollBarImageTransparency = 1
				--
				ui_grid_2.CellSize = UDim2.new(0.85, 0, 0, 30)
				ui_grid_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
				ui_grid_2.VerticalAlignment = Enum.VerticalAlignment.Center
				--
				corner2.CornerRadius = UDim.new(0.05, 0)
				--
				local function _active()
					open = not open
					if open then
						game:GetService("TweenService"):Create(uprv_scrolling_frame, TweenInfo.new(1, Enum.EasingStyle.Linear), {
							Size = UDim2.new(0.15, 0, 0.35, 0)
						}):Play()
						for i,v in uprv_scrolling_frame:GetChildren() do
							if not v:IsA("UIGridLayout") then
								v:Destroy()
							end
						end
						for i,player in game.Players:GetPlayers() do
							local prompt = Instance.new("TextButton", uprv_scrolling_frame)
							local corner3 = Instance.new("UICorner", prompt)
							--
							prompt.Name = player.Name
							prompt.Text = player.DisplayName.."("..player.Name..")"
							prompt.BackgroundColor3 = Color3.fromRGB(159, 159, 159);
							prompt.BorderSizePixel = 0;
							prompt.TextColor3 = Color3.fromRGB(255, 255, 255);
							prompt.TextStrokeColor3 = Color3.fromRGB(0, 0, 0);
							prompt.TextStrokeTransparency = 0;
							prompt.RichText = true;
							prompt.TextWrapped = true;
							prompt.LineHeight = 3
							prompt.TextScaled = true;
							prompt.Font = Enum.Font.RobotoMono;
							--
							corner3.CornerRadius = UDim.new(9999, 0)
							--
							local function OnActive_()
								for i,v in uprv_scrolling_frame:GetChildren() do
									if not v:IsA("UIGridLayout") then
										v:Destroy()
									end
								end
								open = false
								game:GetService("TweenService"):Create(uprv_scrolling_frame, TweenInfo.new(0.3, Enum.EasingStyle.Linear), {
									Size = UDim2.new(0, 0, 0, 0)
								}):Play()
								_function(player)
							end
							prompt.MouseButton1Click:Connect(OnActive_)
							prompt.TouchTap:Connect(OnActive_)
						end
						task.delay(1, function()
							uprv_scrolling_frame.CanvasSize = UDim2.new(0, 0, 0, ui_grid_2.AbsoluteContentSize.Y)
						end)
					else
						game:GetService("TweenService"):Create(uprv_scrolling_frame, TweenInfo.new(0.3, Enum.EasingStyle.Linear), {
							Size = UDim2.new(0, 0, 0, 0)
						}):Play()
					end
				end
				button.MouseButton1Click:Connect(_active)
				button.TouchTap:Connect(_active)
				return button
			end
		end
		return _2return
	end
	local Gui_Settings = _1return.Section("Guis Settings")
	Gui_Settings.ClickButton("r", "Close Gui", function()
		active = false
		gui:Destroy()
	end)
	Gui_Settings.Text("m", "Basic Things")
	Gui_Settings.Keybind("m", "Tp To Mouse", Enum.KeyCode.B, function()
		local mouse = game.Players.LocalPlayer:GetMouse()
		game.Players.LocalPlayer.Character:MoveTo(mouse.Hit.Position)
	end)
	return _1return
end

return _return
