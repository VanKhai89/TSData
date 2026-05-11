local PL = {}

function PL.onLogined(player)
    print("Player " .. player.Id .. " has logged in...")
    print("Player " .. player.QuanHamPoint .. " QuanHamPoint 01")
    -- print("Player " .. player.Id .. " last login time: " )
    local lastLogin = os.date("%Y-%m-%d %H:%M:%S", player.LastLoginTime)
    print("time:", lastLogin)

    local now = os.date("%Y-%m-%d")                        -- "2025-07-15"
    local lastLoginDay = os.date("%Y-%m-%d", player.LastLoginTime)  -- "2025-07-15"
    
    if now ~= lastLoginDay then
        print("Player " .. player.Id .. " has logged in on a new day. Daily reward reset.")
    else
        print("Player " .. player.Id .. " has logged in. Last login day: " .. lastLoginDay)
    end
end

return PL
