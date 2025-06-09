-- local config = function()
--   local theme = require('lualine.themes.nightfox')
--   theme.normal.c.bg = nil
--
--   require('lualine').setup{
--     options = {
--       theme = theme,
--       globalstatus = true
--     },
--     sections = {
--       lualine_a = {
--         {
--           'buffers'
--         },
--       },
--     },
--   }
-- end
--
-- return {
--   'nvim-lualine/lualine.nvim',
--   lazy = false,
--   config = config
-- }
--
local config = function()
	local theme = require("lualine.themes.nightfox")
	theme.normal.c.bg = nil

	require("lualine").setup({
		options = {
			theme = theme,
			globalstatus = true,
			component_separators = { left = "|", right = "|" },
			section_separators = { left = "", right = "" },
			position = "top", -- This moves lualine to the top
		},
		sections = {
			lualine_a = {
				{
					"buffers",
				},
			},
		},
	})
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = config,
}
