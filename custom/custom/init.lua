-- PERSONAL Configuration

function ColorMyPencils(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme=color

  vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
  vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})

end

vim.api.nvim_create_autocmd("VimEnter", {
    pattern = "*",
    callback = function()
        ColorMyPencils()
    end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*",
    callback = function()
        ColorMyPencils()
    end,
})

-- General configs
vim.g.mapleader = ','
vim.g.maplocalleader = ','

vim.o.expandtab=true
vim.o.tabstop=2
vim.o.shiftwidth=2
vim.o.autoindent=true

vim.opt.textwidth=85
vim.opt.wrap=true
vim.opt.linebreak=true

vim.g.python3_host_prog = '/usr/bin/python3'
vim.g.loaded_python3_provider = 1

local enable_providers = {
      "python3_provider",
      "node_provider",
      -- and so on
    }
    
    for _, plugin in pairs(enable_providers) do
      vim.g["loaded_" .. plugin] = nil
      vim.cmd("runtime " .. plugin)
    end

-- Copilot Related Configurations
vim.g.copilot_assume_mapped = true
vim.keymap.set('i', '<F2>', 'copilot#Accept("")', {
  expr = true,
  replace_keycodes = false
})
vim.g.copilot_no_tab_map = true

-- Key Mappings

vim.keymap.set('i', '<leader>{', '{\n\n}<left><up>', { silent = true })
vim.keymap.set('i', '{', '{}<left>', { silent = true })
vim.keymap.set('i', '<leader>[', '[\n\n]<left><up>', { silent = true })
vim.keymap.set('i', '[', '[]<left>', { silent = true })
vim.keymap.set('i', '<leader><', '<><left>', { silent = true })
vim.keymap.set('i', '<', '<', { silent = true })
vim.keymap.set('i', '(', '()<left>', { silent = true })
vim.keymap.set('i', '½', '<Esc><S-a>', { silent = true })
vim.keymap.set('i', '<leader>`', '``<left>', { silent = true })

-- UltiSnips Config
vim.g.UltiSnipsExpandTrigger = "<tab>"
vim.g.UltiSnipsJumpForwardTrigger = "<c-n>"
vim.g.UltiSnipsJumpBackwardTrigger = "<c-b>"

vim.keymap.set('i', '<leader>check', '&#10003;', { silent = true })
vim.keymap.set('i', '<leader>verify', '&#8857;', { silent = true })
vim.keymap.set('i', '<leader>block', '&#10007;', { silent = true })
vim.keymap.set('i', '<leader>inprog', '&#x21BA;', { silent = true })


