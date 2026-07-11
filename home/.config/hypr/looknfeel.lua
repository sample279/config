hl.config({
	general = {
		gaps_in = 4,
		gaps_out = 10,
		border_size = 2,

		col = {
			active_border = {
				colors = {
					"#78824b",
					"#3c4125",
				},
				angle = 35,
			},

			inactive_border = "#262a2b",
		},

		resize_on_border = false,
		allow_tearing = false,
	},

	decoration = {
		rounding = 0,

		active_opacity = 0.97,
		inactive_opacity = 0.90,

		shadow = {
			enabled = true,
			range = 10,
			render_power = 3,
			color = 0x99000000,
			offset = { 2, 2 },
		},

		-- Uncomment if you want blur later
		-- blur = {
		--     enabled = true,
		--     size = 10,
		--     passes = 3,
		--     new_optimizations = true,
		--     vibrancy = 0.1696,
		-- },
	},
})

hl.curve("miasma", {
	type = "bezier",
	points = {
		{ 0.55, 0.02 },
		{ 0.38, 0.98 },
	},
})

hl.curve("fogbank", {
	type = "bezier",
	points = {
		{ 0.70, 0.01 },
		{ 0.30, 1.00 },
	},
})

hl.curve("toxic", {
	type = "bezier",
	points = {
		{ 0.85, 0.00 },
		{ 0.25, 1.00 },
	},
})

hl.animation({
	leaf = "windows",
	enabled = true,
	speed = 4,
	bezier = "miasma",
})

hl.animation({
	leaf = "windowsIn",
	enabled = false,
})

hl.animation({
	leaf = "windowsOut",
	enabled = false,
})

hl.animation({
	leaf = "windowsMove",
	enabled = true,
	speed = 3,
	bezier = "miasma",
})

hl.animation({
	leaf = "fade",
	enabled = true,
	speed = 4,
	bezier = "fogbank",
})

hl.animation({
	leaf = "fadeIn",
	enabled = true,
	speed = 4,
	bezier = "fogbank",
})

hl.animation({
	leaf = "fadeOut",
	enabled = true,
	speed = 3,
	bezier = "fogbank",
})

hl.animation({
	leaf = "workspaces",
	enabled = true,
	speed = 3,
	bezier = "fogbank",
	style = "fade",
})
