-- Glove={"RemoteName", cooldown: number, "CommandName", ...}
-- ...=arguments for firing the remote
return {
    Default={"Fart", 0, "fart"},
    Diamond={"Rockmode", 0, "rock"},
    ZZZZZZZ={"ZZZZZZZSleep", 0, "sleep"},
    Extended={"Fart", 0, "fart"},
    Brick={"lbrick", 3.5, "brick"},
    Flash={"Flashteleport", 3.5, "flash"},
    Swapper={"SLOC", 7.5, "swap"},
    Phase={"PhaseA", 5.2, "phase"},
    ["Za Hando"]={"Erase", 7.5, "pull"},
    Fort={"Fortlol", 5, "fort"},
    Pusher={"PusherWall", 10, "push"},
    Anchor={"AnchorActivated", 5, "anchor"},
    Mail={"Mailsend", 10, "mail"},
    Golden={"Goldify", 0, "goldify", function(args, speaker)
        local anteriorGlove = game:GetService("Players").LocalPlayer.leaderstats.Glove.Value
        equipGlove("Golden")
        game:GetService("ReplicatedStorage"):FindFirstChild("Goldify"):FireServer(true);
        equipGlove(anteriorGlove)
    end},
    Cheeky={"Spherify", 0, "cheeky"},
    Replica={"Duplicate", 10, "clone"},
    bob={"bob", 5.5, "bob"},
    Defense={"Barrier", 30, "barrier"},
    Reverse={"ReverseAbility", 5, "reverse"},
    Jet={"AirStrike", 5, "airstrike", function(args, speaker)
        local plr = getPlayer(getstring(1), speaker)
        table.foreach(plr, function(i, player)
            player=game:GetService("Players"):WaitForChild(player)
            if isPlayerInArena(player) then
                local anteriorGlove = game:GetService("Players").LocalPlayer.leaderstats.Glove.Value
                equipGlove("Jet")
                game:GetService("ReplicatedStorage"):FindFirstChild("AirStrike"):FireServer(player.Character);
                equipGlove(anteriorGlove) 
            end
            if plr[i+1] then task.wait(5) end
        end)
    end},
    Duelist={"DuelistAbility", 25, "duelist"},
    woah={"VineThud", 10, "shockwave"},
    Bubble={"BubbleThrow", 3, "bubble"},
    bus={"busmoment", 5, "bus"},
    ["[REDACTED]"]={"Well", 10, "redacted"},
    Engineer={"Sentry", 10, "sentry"},
    Rocky={"RockyShoot", 7, "rocky"},
    ["God's Hand"]={"Timestop", 35, "timestop", function(args, speaker)
        local anteriorGlove = game:GetService("Players").LocalPlayer.leaderstats.Glove.Value
        equipGlove("God's Hand")
        game:GetService("ReplicatedStorage"):FindFirstChild("TimestopJump"):FireServer();
        game:GetService("ReplicatedStorage"):FindFirstChild("Timestopchoir"):FireServer();
        wait(.2)
        game:GetService("ReplicatedStorage"):FindFirstChild("Timestop"):FireServer();
        equipGlove(anteriorGlove) 
    end},
    Slapple={"funnyTree", 3.5, "tree", function(args, speaker)
        if not args[1] then
            game:GetService("ReplicatedStorage").funnyTree:FireServer(char().HumanoidRootPart.Position)
        else
            local plr = getPlayer(args[1], speaker)
            if plr[1] then
                plr=game:GetService("Players"):FindFirstChild(plr[1])
                game:GetService("ReplicatedStorage").funnyTree:FireServer(plr.Character.HumanoidRootPart.Position)
            end
        end
    end},
    STOP={"STOP", 5, "stop", function(args, speaker)
        local anteriorGlove = game:GetService("Players").LocalPlayer.leaderstats.Glove.Value
        equipGlove("STOP")
        game:GetService("ReplicatedStorage"):FindFirstChild("STOP"):FireServer(true);
        equipGlove(anteriorGlove) 
    end},
    CUSTOM={"CustomMode", 0, "customRock"}
}
