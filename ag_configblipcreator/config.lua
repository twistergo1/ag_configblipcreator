-- Config for the Blip Creator
-- Füge beliebig viele Einträge zur Tabelle `Config.Blips` hinzu.
-- Jeder Eintrag kann folgende Felder enthalten:
--  `name` (string) - Anzeige-Name des Blips
--  `coords` (table oder vector3) - { x = number, y = number, z = number } oder vector3(x,y,z)
--  `sprite` (number) - Blip-Sprite/Id
--  `color` (number) - Blip-Farbe
--  `scale` (number) - Größe des Blips
--  `shortRange` (bool) - nur in kurzer Distanz sichtbar
--  `alpha` (0-255) - Transparenz

Config = {}

Config.Blips = {
    -- Beispiel: Krankenhaus
    {
        name = "Hospital",
        coords = { x = -555.6939, y = -626.6616, z = 34.6767},
        sprite = 61,
        color = 2,
        scale = 1.0,
        shortRange = true,
        alpha = 255
    },

    -- Beispiel: Polizei
    {
        name = "Police Station",
        coords = { x = 425.1, y = -979.5, z = 30.7 },
        sprite = 60,
        color = 38,
        scale = 0.9,
        shortRange = true,
        alpha = 255
    },

    -- Füge hier weitere Blips hinzu. Kopiere einen der Blöcke und passe die Werte an.
}

return Config
