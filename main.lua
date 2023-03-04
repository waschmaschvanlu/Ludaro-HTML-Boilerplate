local display = false

RegisterCommand("on", function()
  Citizen.CreateThread(function()
    TriggerEvent('nui:on', true) -- siehe unten
  end)
end)



RegisterCommand("off", function()
  Citizen.CreateThread(function()
    TriggerEvent("nui:off", true) -- siehe unten
  end)
end)

--[[ ////////////////////////////////////////// ]]

RegisterNetEvent('nui:on')
AddEventHandler('nui:on',
  function() -- du könntest beides auch mit einer function schreiben und sonstiges aber nur zur demonstration ist es in einem event, und dazunoch kannst du off und on in eins machen, aber das ignorieren wir mal.
    SendNUIMessage({
      type = "ui", -- hier iird als beispiel ein type mitgegeben namens UI, dies kannst du wie du wilst bnnenen
      display = true -- hier wird ein boolean (true false) mitgegeben damit du feststellen kannst ob das UI aus oder an sein soll, da es im default zustand immer zu sehen ist, :)
    })
  end)

RegisterNetEvent('nui:off')
AddEventHandler('nui:off', function()
  SendNUIMessage({
    type = "ui",
    display = false -- das display  wird in der JS gemacht auf zu --> html/listener.js
  })
end)

-- WICHTIG ist natürlich auch die fxmanifest das du die  website angibst. <3  ..
