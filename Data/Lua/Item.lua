local IT = {}

function IT.onInit(item)
    print("Initializing item with id: " .. item.Id .. " and name: " .. item.Name);
    item.onUse = function(playerId)
        print("Using item " .. item.Name .. " for player " .. playerId)
    end

    item:Log();
    -- print("Initializing item with id: " .. item.id)
    -- item.onUse = function(playerId)
    --     print("Using item for player " .. playerId)
    -- end
end

return IT   