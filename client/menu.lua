local isInMenu = false
RegisterCommand('crime', function()
    if not isInMenu then
        isInMenu = true
        local menuData = {
            {label = 'Hard Cuff', value = 'h_cuff'},
            {label = 'Soft Cuff', value = 's_cuff'},
            {label = 'Unuff', value = 'uncuff'},
            {label = 'Drag', value = 'drag'},
            {label = 'Put In Vehicle', value = 'putinvehicle'},
            {label = 'Out the Vehicle', value = 'outthevehicle'},
            {label = 'Put In Trunk', value = 'putintrunk'},
            {label = 'Pull Out', value = 'pullout'},
            {label = 'Hide In Trunk', value = 'hideintrunk'},
            {label = 'Get Out', value = 'getout'},
            {label = 'Tie', value = 'tie'},
            {label = 'Untie', value = 'untie'},
            {label = 'Blindfold On', value = 'blindfoldon'},
            {label = 'Blindfold Off', value = 'blindfoldoff'},
            {label = 'Blindfold Takeoff', value = 'Blindfoldtakeoff'},
        }
        ESX.UI.Menu.Open("default",GetCurrentResourceName(),"ak47_crime_menu",{
            title = "Ak47-Crime Menu",
            align = "right",
            elements = menuData,
        },function(data, menu)
            local select = data.current.value
            if select == 'h_cuff' then
                TriggerEvent('ak47_crime:cuff:hard')
            elseif select == 's_cuff' then
                TriggerEvent('ak47_crime:cuff:soft')
            elseif select == 'uncuff' then
                TriggerEvent('ak47_crime:cuff:uncuff')
            elseif select == 'drag' then
                TriggerEvent('ak47_crime:drag:action')
            elseif select == 'putinvehicle' then
                TriggerEvent('ak47_crime:putInVehicle:action')
            elseif select == 'outthevehicle' then
                TriggerEvent('ak47_crime:OutVehicle:action')
            elseif select == 'putintrunk' then
                TriggerEvent('ak47_crime:trunk:forcein:radial')
            elseif select == 'pullout' then
                TriggerEvent('ak47_crime:trunk:forceout:radial')
            elseif select == 'hideintrunk' then
                TriggerEvent('ak47_crime:trunk:in')
            elseif select == 'getout' then
                TriggerEvent('ak47_crime:trunk:out')
            elseif select == 'tie' then
                TriggerEvent('ak47_crime:bind:call')
            elseif select == 'untie' then
                TriggerEvent('ak47_crime:unbind:call')
            elseif select == 'blindfoldon' then
                TriggerEvent('ak47_crime:blindfold:use')
            elseif select == 'blindfoldoff' then
                TriggerEvent('ak47_crime:blindfold:remove')
            elseif select == 'Blindfoldtakeoff' then
                TriggerEvent('ak47_crime:blindfold:remove:own')
            end    
        end,function(data, menu)
            menu.close()
            isInMenu = false
        end)
    end
end)