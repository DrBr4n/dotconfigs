-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {'nvim-telescope/telescope.nvim', tag = '0.1.1', 
        requires = {{'nvim-lua/plenary.nvim'}, 
                    {'nvim-telescope/telescope-live-grep-args.nvim'}},
        config = function()
            require("telescope").load_extension("live_grep_args")
        end 
    }
  
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use('theprimeagen/harpoon')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }

    use('ThePrimeagen/vim-be-good')

    use('mbbill/undotree')
    
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- Colorschemes
    use { 'rose-pine/neovim' }
    
    use { 'catppuccin/nvim' } 
   
    use { 'ellisonleao/gruvbox.nvim' }
    
    use { 'navarasu/onedark.nvim' }
end)
