-- Share Dialogs
hl.window_rule({
	name = "share-dialog",
	match = {
		class = "^(Share|localsend)$",
	},
	float = true,
	center = true,
})

hl.window_rule({
	name = "localsend-size",
	match = {
		class = "^localsend$",
	},
	size = { 1100, 700 },
})
