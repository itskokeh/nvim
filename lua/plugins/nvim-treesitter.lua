local config = function()
  require('nvim-treesitter.config').setup({
    indent = {
      enable = true
    },
    autotag = {
      enable = true
    },
    ensure_installed = {
      'markdown',
      'json',
      'javascript',
      'typescript',
      'svelte',
      'yaml',
      'html',
      'css',
      'bash',
      'lua',
      'dockerfile',
      'solidity',
      'gitignore'
    },
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = true
    },
  })
end

return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
}
