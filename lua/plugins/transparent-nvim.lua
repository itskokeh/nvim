return {
	"itskokeh/transparent.nvim",
	lazy = false,
	config = function()
		vim.cmd("hi StatusLine ctermbg=none guibg=none")
		require("transparent").setup({
			-- table: default groups
			groups = {
				"Normal",
				"NormalNC",
				"Comment",
				"Constant",
				"Special",
				"Identifier",
				"Statement",
				"PreProc",
				"Type",
				"Underlined",
				"Todo",
				"String",
				"Function",
				"Conditional",
				"Repeat",
				"Operator",
				"Structure",
				"LineNr",
				"NonText",
				"SignColumn",
				"CursorLine",
				"CursorLineNr",
				"StatusLine",
				"StatusLineNC",
				"EndOfBuffer",
			},
			-- table: additional groups that should be cleared
			extra_groups = {
				"NormalFloat",
				"TablineFill",
			},
			-- table: groups you don't want to clear
			exclude_groups = {},
		})
	end,
}
