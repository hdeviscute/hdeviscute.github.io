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
    bob={"bob", 5, "bob"},
    Defense={"Barrier", 30, "barrier"},
    Reverse={"ReverseAbility", 5, "reverse"}
}
