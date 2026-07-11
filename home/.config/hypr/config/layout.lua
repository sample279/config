hl.config({
	general = {
		layout = "dwindle",
	},

	layout = {
		single_window_aspect_ratio = { 1, 1 },
	},

	dwindle = {
		preserve_split = true,
		force_split = 2,
	},

	master = {
		new_status = "master",
	},
})

hl.config({
	scrolling = {
		fullscreen_on_one_column = true,
		-- column_width = 0.49,
	},
})
