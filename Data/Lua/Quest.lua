local Quest = {}

function Quest.onChangedQuest(player, questId, step)
    if questId == 10401 then
        -- Tiến vào giang đông
        return { questId = questId, name = "inc_all" }
    end
end

return Quest
