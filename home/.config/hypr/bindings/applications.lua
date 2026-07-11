local desktop = require("config.desktop")

local mod = desktop.mod
local apps = desktop.apps

-- Applications

-- Terminal
hl.bind(mod .. " + RETURN", hl.dsp.exec_cmd(apps.terminal))

-- Browser
hl.bind(mod .. " + SHIFT + E", hl.dsp.exec_cmd(apps.fileManager))

-- File Manager
hl.bind(mod .. " + SHIFT + B", hl.dsp.exec_cmd(apps.browser))

-- Launcher
-- hl.bind(mod .. " + SPACE", hl.dsp.exec_cmd(apps.laucher))
