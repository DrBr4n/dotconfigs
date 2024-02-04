return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')
        -- List files in your current working directory, respects .gitignore
        vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
        -- Fuzzy search through the output of git ls-files, respects .gitignore
        vim.keymap.set("n", "<leader>pg", builtin.git_files, {})
        -- Search for a string in your current working directory, requires ripgrep
        vim.keymap.set("n", "<leader>ps", function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        -- Search for w in your current working directory, requires ripgrep
        vim.keymap.set("n", "<leader>pws", function()  
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        -- Search for W in your current working directory, requires ripgrep
        vim.keymap.set("n", "<leader>pWs", function()  
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)
        -- Search live in your current working directory, respects .gitignore, requires ripgrep
        vim.keymap.set("n", "<leader>lg", builtin.live_grep, {}) 
        -- Lists available help tags and opens a new window with the relevant help info on <cr>
        vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})    
        -- TODO
        -- vim.keymap.set('n', "<leader>lg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>") 
    end
}
