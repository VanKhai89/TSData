local M = {}

function M.getMenu(playerId)
    return {
        title = "Menu tân thủ",
        items = {
            { id = "shop", name = "Mở shop" },
            { id = "talk", name = "Nói chuyện" },
            { id = "exit", name = "Thoát" }
        }
    }
end

function M.onSelect(playerId, id)
    if id == "shop" then
        print("Open shop for " .. playerId)

    elseif id == "talk" then
        print("Talking...")

    elseif id == "exit" then
        print("Bye")
    end
end

return M