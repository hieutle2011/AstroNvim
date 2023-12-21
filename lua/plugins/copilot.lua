return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      copilot_node_command = vim.fn.expand("$HOME") .. "/.asdf/installs/nodejs/21.4.0/bin/node", -- Node.js version must be > 18.x
      suggestion = {
        auto_trigger = true,
        debounce = 300,
        keymap = {
          -- <Option-y>
          accept = "<F6>",
          -- accept = "¥",
          -- accept_word = true,
          -- accept_line = true,
        }
      }
    })
  end,
}
