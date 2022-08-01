local possibleNames = {
    "KYS",
    "NO REMOTE SPY-_-",
    "CRINGE-__--",
    "NERD_--_",
    "MONKEY-.",
    "GET OFF MY SHIT  -=1",
    "SPINBOT!!!  --=",
    "HACK  ",
    "SYNAPSE X PRO  -",
    "KRNL-- ",
    "DISCORD__-",
    "SCRIPT-WARE GOOD WHEN???_-",
    "NAME-_",
    "THIS IS A NAME__",
    "HELLO!!! ",
    "RCB=",
    "REPTILIANCLUBBOYZ--",
    "BITCH_"
}
local possibleParents = {
    game.Workspace,
    game.Players,
    game.Players.LocalPlayer,
    game.ReplicatedStorage,
    game.CoreGui
}

local function fire(inst)
    local fireLoop = game:GetService("RunService").Heartbeat:Connect(function()
        inst:FireServer("Hello Please No Remotespy Men",math.random())
    end)
    wait(1)
    fireLoop:Disconnect()
end
local function detectPart(part)
    if part:FindFirstChild("SaveMapWindow") and part:FindFirstChild("ScriptEditor") and part:FindFirstChild("RemoteDebugWindow") then
        return true
    else
        return false
    end
end
local function closeGame()
    if (rconsoleprint) and (rconsolename) then
        rconsolename("Please No Cheat Men, Cheating Against ROBLOX TOS :(")
        rconsoleprint("@@RED@@")
        while true do
            rconsoleprint("\n:(")
        end
    else
        while true do warn(':(') end
    end
end

local coregui = game:GetService("CoreGui")


for i,v in pairs(coregui:GetDescendants()) do
    if detectPart(v) == true then
        closeGame()
        game.Players.LocalPlayer:Kick("Yeat Tonka Truck!!")
    end
end

coregui.DescendantAdded:Connect(function(part)
    task.wait(2)
    if detectPart(part) == true then
        closeGame()
        game.Players.LocalPlayer:Kick("Yeat Tonka Truck!!")
    end
end)

local loop = game:GetService("RunService").Heartbeat:Connect(function()
    local instance = Instance.new("RemoteEvent")
    instance.Parent = possibleParents[math.random(1,5)]
    instance.Name = possibleNames[math.random(1,18)]..math.random()
    fire(instance)
end)
