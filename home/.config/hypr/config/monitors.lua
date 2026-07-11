hl.monitor({
	output = "",
	mode = "preferred",
	position = "auto",
	scale = 1,
	bitdepth = 10,
	supports_hdr = 1,
	cm = "srgb",
	-- sdrbrightness = 1.5,
	-- sdrsaturation = 1,
})

hl.config({
	render = {
		cm_auto_hdr = true,
	},
})
