-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
local go = vim.g

opt.autoindent = true
opt.hlsearch = true
opt.cursorline = false

opt.shiftwidth = 4
opt.tabstop = 4

-- Font
go.gui_font_default_size = 10
go.gui_font_size = go.gui_font_default_size
go.gui_font_face = "JetBrainsMono Nerd Font"

-- Enable spell checking
opt.spell = true
opt.spelllang = { "en" }

-- Backspacing and indentation when wrapping
opt.backspace = { "start", "eol", "indent" }
opt.breakindent = true

opt.smoothscroll = true

opt.conceallevel = 2
