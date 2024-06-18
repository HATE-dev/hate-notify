-- Register the event listener
RegisterNetEvent('hate-notify:sendNotify')
AddEventHandler('hate-notify:sendNotify', function(message, type, time)
  SendNUIMessage({
    event = 'showUI',
    message = message,
    type = type,  -- inform, success, error
    duration = time
  })
end)

-- Example function to trigger notifications
function notify(message, type, duration)
  TriggerEvent('hate-notify:sendNotify', message, type, duration)
end

