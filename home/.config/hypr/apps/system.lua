-- Generic Floating Windows
hl.window_rule({
	name = "floating-window",
	match = {
		tag = "floating-window",
	},
	float = true,
	center = true,
	size = { 875, 600 },
})

-- Common Floating Applications
hl.window_rule({
	name = "floating-apps",
	match = {
		class = "^(org.gnome.NautilusPreviewer|org.gnome.Evince|com.gabm.satty|imv|mpv)$",
	},
	tag = "+floating-window",
})

-- File Chooser Dialogs
hl.window_rule({
	name = "file-chooser-dialogs",
	match = {
		class = "^(xdg-desktop-portal-gtk|sublime_text|DesktopEditors|org.gnome.Nautilus)$",
		title = "^(Open.*Files?|Open [Ff]older.*|Save.*Files?|Save.*As|Save|All Files|.*wants to [Oo]pen.*|.*wants to [Ss]ave.*|[Cc]hoose.*)",
	},
	tag = "+floating-window",
})

-- Calculator
hl.window_rule({
	name = "calculator",
	match = {
		class = "^org.gnome.Calculator$",
	},
	float = true,
})

-- Media Applications
hl.window_rule({
	name = "media-opacity",
	match = {
		class = "^(zoom|vlc|mpv|org.kde.kdenlive|com.obsproject.Studio|imv|org.gnome.Loupe)$",
	},
	tag = "-default-opacity",
	opacity = "1 1",
})

-- Generic Tags
hl.window_rule({
	name = "rounded-popups",
	match = {
		tag = "pop",
	},
	rounding = 8,
})

hl.window_rule({
	name = "no-idle",
	match = {
		tag = "noidle",
	},
	idle_inhibit = "always",
})
