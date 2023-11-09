RegisterCommand('weapon', function(source, args) 
  local weaponName = args[1] or 'weapon_pistol'

  if not IsWeaponValid(weaponName) then
    TriggerEvent('chat:addMessage', {
      args = { 'Umm, ' .. weaponName .. ' is not a weapon' }
    })
    return
  end

  local playerPed = PlayerPedId()
  GiveWeaponToPed(playerPed, weaponName, 55000000, false, true)
end, false)