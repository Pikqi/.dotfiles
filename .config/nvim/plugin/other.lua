-- Autopairs
local status, autopairs = pcall(require, "nvim-autopairs")
if (not status) then return end

autopairs.setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})

local status, hologram = pcall(require, "hologram")
if (not status) then return end

hologram.setup{
    auto_display = true -- WIP automatic markdown image display, may be prone to breaking
}
