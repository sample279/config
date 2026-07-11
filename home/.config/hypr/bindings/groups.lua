local desktop = require("config.desktop")

local mod = desktop.mod

-- Groups

-- Toggle grouping
hl.bind(mod .. " + G", hl.dsp.group.toggle())

-- Remove active window from group
hl.bind(
	mod .. " + ALT + G",
	hl.dsp.window.move({
		out_of_group = true,
	})
)

-- Insert into neighbouring group
hl.bind(mod .. " + ALT + H", hl.dsp.window.move({ into_group = "l" }))
hl.bind(mod .. " + ALT + L", hl.dsp.window.move({ into_group = "r" }))
hl.bind(mod .. " + ALT + K", hl.dsp.window.move({ into_group = "u" }))
hl.bind(mod .. " + ALT + J", hl.dsp.window.move({ into_group = "d" }))

-- Cycle inside group
hl.bind(mod .. " + ALT + TAB", hl.dsp.group.next())
hl.bind(mod .. " + ALT + SHIFT + TAB", hl.dsp.group.prev())
