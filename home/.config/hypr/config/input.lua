-- https://wiki.hypr.land/Configuring/Basics/Variables/#input

hl.config({
	input = {
		kb_layout = "us",
		kb_variant = "",
		kb_model = "",
		kb_rules = "",
		kb_options = "compose:caps",

		follow_mouse = 1,
		sensitivity = 0,
		-- accel_profile = "flat",

		repeat_rate = 40,
		repeat_delay = 250,

		numlock_by_default = true,

		touchpad = {
			natural_scroll = false,

			-- Two-finger tap = right click
			clickfinger_behavior = true,

			scroll_factor = 0.4,

			-- disable_while_typing = false,
			-- drag_3fg = 1,
		},
	},

	misc = {
		key_press_enables_dpms = true,
		mouse_move_enables_dpms = true,
	},
})

-- Better touchpad scrolling in terminals
hl.window_rule({
	name = "terminal-touchpad-scroll",
	match = {
		class = "(Alacritty|kitty|foot)",
	},
	scroll_touchpad = 1.5,
})

hl.window_rule({
	name = "ghostty-touchpad-scroll",
	match = {
		class = "(ghostty|com.mitchellh.ghostty)",
	},
	scroll_touchpad = 0.2,
})

-- Switch workspaces with three-finger swipe
-- hl.gesture({
--     fingers = 3,
--     direction = "horizontal",
--     action = "workspace",
-- })

-- Move focus with three-finger swipe
-- hl.gesture({
--     fingers = 3,
--     direction = "left",
--     action = function()
--         hl.dispatch(hl.dsp.focus({ direction = "l" }))
--     end,
-- })

-- hl.gesture({
--     fingers = 3,
--     direction = "right",
--     action = function()
--         hl.dispatch(hl.dsp.focus({ direction = "r" }))
--     end,
-- })
