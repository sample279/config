-- Terminals
hl.window_rule({
	name = "terminal-tag",
	match = {
		class = "^(Alacritty|kitty|ghostty|com.mitchellh.ghostty|foot)$",
	},
	tag = "+terminal",
})

hl.window_rule({
	name = "terminal-opacity",
	match = {
		tag = "terminal",
	},
	tag = "-default-opacity",
	opacity = "0.97 0.9",
})
