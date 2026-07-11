local desktop = require("config.desktop")

local mod = desktop.mod

-- Window Management
hl.bind(mod .. " + W", hl.dsp.window.close())
hl.bind(mod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mod .. " + P", hl.dsp.window.pseudo())
hl.bind(mod .. " + SEMICOLON", hl.dsp.layout("togglesplit"))
hl.bind(mod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen" }))
hl.bind(mod .. " + CTRL + F", hl.dsp.window.fullscreen_state({ internal = 0, client = 2 }))
hl.bind(mod .. " + ALT + F", hl.dsp.window.fullscreen({ mode = "maximized" }))

-- Focus Windows
hl.bind(mod .. " + H", hl.dsp.focus({ direction = "l" }))
hl.bind(mod .. " + L", hl.dsp.focus({ direction = "r" }))
hl.bind(mod .. " + K", hl.dsp.focus({ direction = "u" }))
hl.bind(mod .. " + J", hl.dsp.focus({ direction = "d" }))

-- Swap Windows
hl.bind(mod .. " + SHIFT + H", hl.dsp.window.swap({ direction = "l" }))
hl.bind(mod .. " + SHIFT + L", hl.dsp.window.swap({ direction = "r" }))
hl.bind(mod .. " + SHIFT + K", hl.dsp.window.swap({ direction = "u" }))
hl.bind(mod .. " + SHIFT + J", hl.dsp.window.swap({ direction = "d" }))

-- Window Cycling
hl.bind("ALT + TAB", hl.dsp.window.cycle_next())
hl.bind("ALT + SHIFT + TAB", hl.dsp.window.cycle_next({ next = false }))

-- hl.bind("ALT + TAB", hl.dsp.window.bring_to_top())
-- hl.bind("ALT + SHIFT + TAB", hl.dsp.window.bring_to_top())
