return { 
    {
        'echasnovski/mini.files', 
        opts = {
                windows = {
                    preview = true,
                    width_focus = 30,
                    width_preview = 30,
            },
            options = {
                use_as_default_explorer = true,
            },
        },
        keys = {
            {"<leader>fm", function() require("mini.files").open(vim.api.nvim_buf_get_name(0), true) end, desc = "Open mini.files (Directory of Current File)",},
            {"<leader>fM", function() require("mini.files").open(vim.uv.cwd(), true) end, desc = "Open mini.files (cwd)",},
        },
        config = function(_, opts)
            require("mini.files").setup(opts)
        end,
    },
    {
        "echasnovski/mini.pairs",
        event = "VeryLazy",
        opts = {
            modes = { insert = true, command = true, terminal = false },
            -- skip autopair when next character is one of these
            skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
            -- skip autopair when the cursor is inside these treesitter nodes
            skip_ts = { "string" },
            -- skip autopair when next character is closing pair
            -- and there are more closing pairs than opening pairs
            skip_unbalanced = true,
            -- better deal with markdown code blocks
            markdown = true,
        },
    },
    {"echasnovski/mini.comment",event = "VeryLazy",},
}


