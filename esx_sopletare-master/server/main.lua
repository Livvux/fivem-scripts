ESX = nil

TriggerEvent("esx:getSharedObject", function(response)
    ESX = response
end)

RegisterServerEvent('esx_sopletare:getItem')
AddEventHandler('esx_sopletare:getItem', function()

    local luck = math.random(1, 6)

    if luck == 1 then

        local items = { -- add whatever items you want here
            'bandage',
            'burger',
            'bread',
			'bottle',
			'croquettes',
			'slaughtered_chicken',
			'wool',
            'scratchoff_used'
        }

        local player = ESX.GetPlayerFromId(source)
        local randomItems = items[math.random(#items)]
        local quantity = math.random(#items)
        local itemfound = ESX.GetItemLabel(randomItems)

        player.addInventoryItem(randomItems, quantity)
        sendNotification(source, 'Gefunden: ' .. quantity .. ' x ' .. itemfound, 'success', 2500)

    elseif luck == 4 then

        local weapons = { -- add whatever weapons you want here
            'WEAPON_KNIFE',
			'WEAPON_BOTTLE',
        }

        local player = ESX.GetPlayerFromId(source)
        local randomWeapons = weapons[math.random(#weapons)]
        local quantity = math.random(#weapons)
        local weaponfound = ESX.GetWeaponLabel(randomWeapons)

        player.addWeapon(randomWeapons, quantity)
        sendNotification(source, 'Wow! Gefunden: ' .. weaponfound, 'success', 2500)
    else
        sendNotification(source, 'Hier ist nichts drin. Such dir einen Job, verdammt!', 'error', 2000)
    end
end)