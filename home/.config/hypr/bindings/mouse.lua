local desktop = require("config.desktop")

local mod = desktop.mod

-- Mouse

-- Scroll through workspaces
hl.bind(mod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move floating/tiled windows
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })

-- Resize windows
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
