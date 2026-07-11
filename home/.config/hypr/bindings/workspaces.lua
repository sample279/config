local desktop = require("config.desktop")

local mod = desktop.mod
local workspaces = desktop.workspaces

-- Workspaces
for i = 1, workspaces.count do
	local key = i % 10 -- Workspace 10 maps to key 0
	-- Focus workspace
	hl.bind(mod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	-- Move window to workspace
	hl.bind(mod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
	-- Move window without following
	hl.bind(mod .. " + SHIFT + ALT + " .. key, hl.dsp.window.move({ workspace = i, follow = false }))
end

-- Scratchpad
hl.bind(mod .. " + S", hl.dsp.workspace.toggle_special(workspaces.scratchpad))
hl.bind(mod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:" .. workspaces.scratchpad, follow = false }))

-- Workspace Cycling
hl.bind(mod .. " + TAB", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mod .. " + SHIFT + TAB", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mod .. " + CTRL + TAB", hl.dsp.focus({ workspace = "previous" }))
