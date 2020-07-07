if not game['Loaded'] then game['Loaded']:Wait() end; repeat wait(.06) until game:GetService('Players').LocalPlayer ~= nil;
repeat wait(.06) until game:GetService('Players').LocalPlayer ~= nil
syn.queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/xxaim/ignore/master/temp5.lua"))()')

local LP = game:GetService("Players").LocalPlayer
LP:WaitForChild("Backpack")
wait(10)
print(LP:WaitForChild("Backpack"):GetChildren()[1]) --.BoomBox.Parent = LP.Character

--[[
local Error = ('お前はもう死んでいる'):rep(1600)

local Boombox = LP.Character:FindFirstChildOfClass('Tool')
local Remote = Boombox:FindFirstChildOfClass('RemoteEvent')

settings():GetService("LuaSettings").DefaultWaitTime = math.huge
for i=1, 15 do
    game:GetService("RunService").RenderStepped:wait()
end
settings():GetService("LuaSettings").DefaultWaitTime = -math.huge

spawn(function()
    wait(10)
    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, LP)
end)

repeat
  Remote:FireServer('PlaySong',Error)
  wait()
until not Boombox['Parent']:IsA('Model')
--]]
