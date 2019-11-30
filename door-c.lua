CreateThread(function()
    while true do
        local ped = PlayerPedId()
        Wait(0)
        if IsPedInAnyVehicle(ped, false) then
            if IsControlJustReleased(1, 56) then
                TriggerEvent("chatMessage", "^2...הדלתות נפתחות")
                Wait(2000)
                SetVehicleDoorOpen(GetVehiclePedIsUsing(ped), 0, false, false)
                SetVehicleDoorOpen(GetVehiclePedIsUsing(ped), 1, false, false)
                SetVehicleDoorOpen(GetVehiclePedIsUsing(ped), 2, false, false)
                SetVehicleDoorOpen(GetVehiclePedIsUsing(ped), 3, false, false)
                TriggerEvent("chatMessage", "^1!הדלתות פתוחות")
            end
            if IsControlJustReleased(1, 57) then
                TriggerEvent("chatMessage", "^2...הדלתות נסגרות")
                Wait(2000)
                SetVehicleDoorShut(GetVehiclePedIsUsing(ped), 0, false)
                SetVehicleDoorShut(GetVehiclePedIsUsing(ped), 1, false)
                SetVehicleDoorShut(GetVehiclePedIsUsing(ped), 2, false)
                SetVehicleDoorShut(GetVehiclePedIsUsing(ped), 3, false)
                TriggerEvent("chatMessage", "^1!הדלתות סגורת")
            end
        end
    end
end)
         
                
