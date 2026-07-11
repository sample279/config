-- Browser Tags
hl.window_rule({
	name = "chromium-based-browser",
	match = {
		class = "^((google-)?[Cc]hrom(e|ium)|[Bb]rave-browser|[Mm]icrosoft-edge|Vivaldi-stable|helium)$",
	},
	tag = "+chromium-based-browser",
})

hl.window_rule({
	name = "firefox-based-browser",
	match = {
		class = "^(firefox|Firefox|zen|librewolf)$",
	},
	tag = "+firefox-based-browser",
})

-- Browser Opacity
hl.window_rule({
	name = "chromium-opacity",
	match = {
		tag = "chromium-based-browser",
	},
	tag = "-default-opacity",
	tile = true,
	opacity = "1.0 0.97",
})

hl.window_rule({
	name = "firefox-opacity",
	match = {
		tag = "firefox-based-browser",
	},
	tag = "-default-opacity",
	opacity = "1.0 0.97",
})

-- Chromium Video Apps
hl.window_rule({
	name = "chromium-video-remove-browser-tag",
	match = {
		class = "^(chrome-youtube\\.com__-Default|chrome-app\\.zoom\\.us__wc_home-Default)$",
	},
	tag = "-chromium-based-browser",
})

hl.window_rule({
	name = "chromium-video-remove-opacity",
	match = {
		class = "^(chrome-youtube\\.com__-Default|chrome-app\\.zoom\\.us__wc_home-Default)$",
	},
	tag = "-default-opacity",
})

-- Screen Sharing Notification
hl.window_rule({
	name = "hide-screen-sharing-notification",
	match = {
		title = ".*is sharing.*",
	},
	workspace = "special silent",
})
