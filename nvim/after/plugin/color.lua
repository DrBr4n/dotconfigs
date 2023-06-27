--function Color(color)
--	color = color or "rose-pine"
--	vim.cmd.colorscheme(color)
--	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
--	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})

--end

function Color(color)
    color = color or "onedark"
    require('onedark').setup {
        style = 'deep'
    }
    require('onedark').load()
	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})

end


Color()

