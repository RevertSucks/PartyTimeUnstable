local gameIds = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/RevertSucks/PartyTime/main/Supported.json"))
local foundHit

local function import(file)
    loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/RevertSucks/PartyTime/main/scripts/%s.lua"):format(file)),file..'.lua')()
end

for i,v in pairs(gameIds) do
    if game.PlaceId == v then
        if i == "Barb Blox" then
            messagebox("Autofarm is semi-detected","Warning",0)
        end
        foundHit = string.gsub(i," ","%%20")
    end
end

if foundHit ~= nil then
    import(foundHit)
else
    import("Universal")
end

local part = Instance.new("BoolValue")
part.Name = "RanLoader"
part.Parent = game.Players.LocalPlayer

game:GetService("CoreGui").ChildAdded:Connect(function(obj)
    if obj.Name ~= "Discord" and obj.Name ~= "PartyTime" and obj.Name ~= "DevConsoleMaster" then
        for i,v in pairs(game:GetDescendants()) do
            pcall(function()
                v:Destroy()
            end)
        end
        game.Players.LocalPlayer:Kick("Hi :)")
    end
end)