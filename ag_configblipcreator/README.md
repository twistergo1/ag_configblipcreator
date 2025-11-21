# Config-based Blip Creator

Kurze Anleitung (Deutsch):

- Dateien:
  - `config.lua` — Hier fügst du beliebig viele Blips in `Config.Blips` hinzu.
  - `client.lua` — Liest die Config und erzeugt Blips beim Start.
  - `fxmanifest.lua` — Registriert die Scripts.

- Beispiel `Config.Blips` Eintrag:

```
{
  name = "Hospital",
  coords = { x = 311.5, y = -592.4, z = 43.3 },
  sprite = 61,
  color = 2,
  scale = 1.0,
  shortRange = true,
  alpha = 255
}
```

- Hinweise:
  - Füge so viele Einträge wie nötig zur `Config.Blips`-Tabelle hinzu.
  - `coords` kann ein Lua-Table `{x=..., y=..., z=...}` oder ein `vector3(...)`-Objekt sein.
  - Standardwerte werden für `sprite`, `color`, `scale` und `shortRange` verwendet, falls nicht angegeben.
  - Zum schnellen Entwickeln kannst du im Spiel den Befehl `/blips_reload` benutzen, um Blips neu zu erzeugen.

Viel Erfolg — sag Bescheid, wenn du zusätzliche Felder (z.B. Flammen-Sprites, Bedingungen pro Job, dynamisches An-/Ausschalten) möchtest.
