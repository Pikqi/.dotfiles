-- Autopairs
local status, autopairs = pcall(require, "nvim-autopairs")
if (not status) then return end

autopairs.setup({
	disable_filetype = { "TelescopePrompt", "vim" },
})

local status, colorizer = pcall(require, "colorizer")
if (not status) then return end

colorizer.setup()
