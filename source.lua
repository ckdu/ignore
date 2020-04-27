--[[
Flex Your Account Age Cart Troll GUI
Made by Aim @V3rmillion
Enjoy
--]]

function click(a)
	for i, v in ipairs(game:GetService("Workspace").Carts:GetChildren()) do
		if v.Name == "1Cart" or v.Name == "2Cart" or v.Name == "4Cart" and v[a] then
			fireclickdetector(v[a].Click, 0)
		end
	end
end

function keep(on)
	for i, v in ipairs(game:GetService("Workspace").Carts:GetChildren()) do
		wait()
		if v.Name == "1Cart" or v.Name == "2Cart" or v.Name == "4Cart" then
			if on and v.Configuration.CarOn.Value == false then
				fireclickdetector(v.On.Click, 0)
			else if not on and v.Configuration.CarOn.Value == true then
				fireclickdetector(v.On.Click, 0)
			end
			end
		end
	end
end

function changeSpeed(speed)
	for i, v in ipairs(game:GetService("Workspace").Carts:GetChildren()) do
		wait()
		if v.Name == "1Cart" or v.Name == "2Cart" or v.Name == "4Cart" then
			if v.Configuration.Speed.Value/5 < speed then
				fireclickdetector(v.Up.Click, 0)
			elseif v.Configuration.Speed.Value/5 > speed then
				fireclickdetector(v.Down.Click, 0)
			end
		end
	end
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kiwi-i/wallys-ui-fork/master/lib.lua", true))()
local Window = library:CreateWindow('FYAA Cart Troll')

local Toggle1 = Window:Toggle("Up Arrow Spam", {flag = "up"})
local Toggle2 = Window:Toggle("Down Arrow Spam", {flag = "down"})
local Toggle3 = Window:Toggle("On/Off Button Spam", {flag = "on"})
local Toggle4 = Window:Toggle("Keep carts On", {flag = "allon"})
local Toggle5 = Window:Toggle("Keep carts Off", {flag = "alloff"})
Window:Section('Speed Control')
local Toggle = Window:Toggle("Enable Speed Slider", {flag = "speedToggle"})
local Slider = Window:Slider("All Carts Speed",
	{
		precise = false,
		default = 8,
		min = -50,
		max = 50,
		flag = "speed"
	},
function()
	while wait() do
		if Window.flags.speedToggle then
			pcall(changeSpeed, Window.flags.speed)
		end
	end
end)

Window:Section('Made by Aim @V3rmillion')
Window:Section('Please consider vouching')
spawn( 
	function()
		while wait() do
			if Window.flags.up then
				pcall(click, "Up")
			end
		end
	end
)
spawn(
	function()
		while wait() do
			if Window.flags.down then
				pcall(click, "Down")
			end
		end
	end
)
spawn(
	function()
		while wait() do
			if Window.flags.on then
				pcall(click, "On")
			end
		end
	end
)
spawn(
	function()
		while wait() do
			if Window.flags.allon then
				keep(true)
			end
		end
	end
)
spawn(
	function()
		while wait() do
			if Window.flags.alloff then
				keep(false)
			end
		end
	end
)
