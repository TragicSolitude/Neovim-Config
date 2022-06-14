return function (use)
    use {
        'nvim-telescope/telescope.nvim',
        -- Has a weird bug right now with lazy loading
        -- opt = true,
        -- cmd = {'Telescope'},
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-ui-select.nvim'
        },
        config = function ()
            local actions = require'telescope.actions'
            require'telescope'.setup {
                defaults = {
                    mappings = {
                        i = {
                            ['<esc>'] = actions.close
                        }
                    }
                },
                pickers = {
                    find_files = {
                        previewer = false,
                        theme = 'ivy'
                    },
                    git_files = {
                        previewer = false,
                        theme = 'ivy'
                    },
                    live_grep = {
                        theme = 'dropdown'
                    },
                    man_pages = {
                        previewer = false,
                        theme = 'ivy'
                    },
                    lsp_references = {
                        initial_mode = 'normal'
                    }
                },
                extensions = {
                    ['ui-select'] = {
                        require'telescope.themes'.get_cursor()
                    }
                }
            }

            require'telescope'.load_extension('ui-select')
        end
    }

    -- EXTENSIONS --

    -- use {'nvim-telescope/telescope-ui-select.nvim'}
    -- require'telescope'.load_extension('ui-select')
end