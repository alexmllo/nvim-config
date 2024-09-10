local palette = require("catppuccin.palettes").get_palette("macchiato") -- Import your favorite catppuccin colors

return {
    {
        "LazyVim/LazyVim",
        opts = { colorscheme = "catppuccin" },
    },
}
