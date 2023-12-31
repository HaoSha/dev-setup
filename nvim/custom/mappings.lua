local M = {}

M.general = {
  n = {
    ["<C-h>"] = {"<cmd> TmuxNavigateLeft<CR>", "window left"},
    ["<C-l>"] = {"<cmd> TmuxNavigateRight<CR>", "window right"},
    ["<C-j>"] = {"<cmd> TmuxNavigateDown<CR>", "window down"},
    ["<C-k>"] = {"<cmd> TmuxNavigateUp<CR>", "window up"},
  }
}

M.run_python = {
  n = {
    ["<leader>rp"] = {":sp <CR> :term python % <CR>", "run python script on a terminal"},
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"}
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require("dap-python").test_method()
      end
    }
  }
}


-- disable default mappings
M.disabled = {
  n = {
    ["<C-n>"] = "",
    ["<A-i>"] = "",
    ["<A-v>"] = "",
    ["<A-h>"] = "",
    ["gb"] = "",
    ["gn"] = "",
  }
}

-- custom mappings
M.nvim_tree = {
  n = {
    ["<leader>nt"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
  }
}


M.split_windows = {
  n = {
    ["<leader>sv"] = { ":vsplit<CR>", "Split vertically" },
    ["<leader>sh"] = { ":split<CR>", "Split horizontally" },

    ["<c-n>"] = { ":resize -1<CR>", "Stretch split down" },
    ["<c-m>"] = { ":resize +1<CR>", "Stretch split up" },
    ["<c-,>"] = { ":resize -1<CR>", "Stretch split left" },
    ["<c-.>"] = { ":resize -1<CR>", "Stretch split right" },
    ["<c-=>"] = { "<c-w>=", "Resize all windows to equal size" },
  }
}


M.manage_buffer = {
  n = {
    ["<leader>cb"] = {":bd!<CR>", "close current file without exiting vim and ‘no modification’"},
    ["<leader>q"] = {":bp<bar>sp<bar>bn<bar>bd<CR>", "close current buffer without closing the window"}
  }
}

M.jump_location = {
  n = {
    ["gb"] = {"<C-O>", "Go to the previous location"},
    ["gn"] = {"<C-I>", "Go to the next location"},
  }
}


return M
