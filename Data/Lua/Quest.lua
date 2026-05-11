local Quest = {}

function Quest.onChangeQuest(event, player, questId)
    print("Player " .. player.Id .. " has changed quest " .. questId .. " to status " .. event.status)
end

return Quest
