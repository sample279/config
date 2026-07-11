-- Remove animation from the screenshot selection overlay.
hl.layer_rule({
	name = "hyprshot-selection",
	match = {
		namespace = "selection",
	},
	no_anim = true,
})
