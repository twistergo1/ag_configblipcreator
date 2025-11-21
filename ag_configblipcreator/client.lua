-- Client script: liest `Config.Blips` und erzeugt Blips bei Ressource-Start

local function createBlip(entry)
    if not entry or not entry.coords then return end

    local x,y,z
    if type(entry.coords) == 'table' then
        x = entry.coords.x
        y = entry.coords.y
        z = entry.coords.z
    else
        -- ggf. vector3 userdata
        local ok, _x = pcall(function() return entry.coords.x end)
        if ok then
            x = entry.coords.x
            y = entry.coords.y
            z = entry.coords.z
        end
    end

    if not (x and y and z) then return end

    local blip = AddBlipForCoord(x, y, z)
    SetBlipSprite(blip, entry.sprite or 1)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, entry.scale or 1.0)
    SetBlipColour(blip, entry.color or 1)
    SetBlipAlpha(blip, entry.alpha or 255)
    SetBlipAsShortRange(blip, entry.shortRange == nil and true or entry.shortRange)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(entry.name or "Blip")
    EndTextCommandSetBlipName(blip)
end

local function createAllBlips()
    if not Config or not Config.Blips then return end
    for _, entry in ipairs(Config.Blips) do
        createBlip(entry)
    end
end

Citizen.CreateThread(function()
    -- kleine Verzögerung, damit `config.lua` geladen ist
    Wait(100)
    createAllBlips()
end)

-- Optional: Befehl zum Neuladen (nützlich beim Entwickeln)
RegisterCommand('blips_reload', function()
    createAllBlips()
    print('Blips neu geladen')
end, false)
