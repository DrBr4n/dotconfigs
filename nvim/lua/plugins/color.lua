function Color(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
    vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

return {
    {
        "folke/tokyonight.nvim",
        name = "tokyonight",
        priority = 1000
    },

    { 
        "catppuccin/nvim", 
        name = "catppuccin",
        priority = 1000
    },

    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        priority = 1000
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,
        config = function()
            -- Call color to change colorscheme
            Color("catppuccin")
        end
    },
}
