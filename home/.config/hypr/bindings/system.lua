local desktop = require("config.desktop")

local mod = desktop.mod

-- System

-- Exit / Power Menu
hl.bind(
	mod .. " + M",
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit")
)

-- Hyprland

-- Reload configuration
hl.bind(mod .. " + CTRL + R", hl.dsp.exec_cmd("hyprctl reload"))
