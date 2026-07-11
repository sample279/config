hl.window_rule({
	name = "suppress-maximize-events",
	match = {
		class = ".*",
	},
	suppress_event = "maximize",
})

hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})

hl.window_rule({
	name = "default-opacity-tag",
	match = {
		class = ".*",
	},
	tag = "+default-opacity",
})

require("apps")

hl.window_rule({
	name = "default-opacity",
	match = {
		tag = "default-opacity",
	},
	opacity = "0.97 0.90",
})
