RegisterCommand('error', function(source, args, rawCommand)
    TriggerClientEvent('hate-notify:sendNotify', source, "Test my first script","error")
end)

RegisterCommand('success', function(source, args, rawCommand)
    TriggerClientEvent('hate-notify:sendNotify', source, "Test my first script","success")
end)

RegisterCommand('inform', function(source, args, rawCommand)
    TriggerClientEvent('hate-notify:sendNotify', source, "Test my first script","inform")
end)

RegisterCommand('errorl', function(source, args, rawCommand)
    TriggerClientEvent('hate-notify:sendNotify', source, "Long information to test this shit looks god if theres bunch text in notify","error")
end)

RegisterCommand('successl', function(source, args, rawCommand)
    TriggerClientEvent('hate-notify:sendNotify', source, "Long information to test this shit looks god if theres bunch text in notify","success")
end)

RegisterCommand('informl', function(source, args, rawCommand)
    TriggerClientEvent('hate-notify:sendNotify', source, "Long information to test this shit looks god if theres bunch text in notify","inform")
end)