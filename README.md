# Neovim
do `:checkhealth` to see what needs to be (un)installed.

Refer to `lua/settings/keymaps-plugins.lua` and `lua/plugins/` for maintenence notes
- `lua/plugins/lsp.lua` has manually configured **linters**
- `lua/plugins/conform.lua` has manually configured **formatters**

`ftplugin/java.lua` statically references the home dir. Update this if my username changes 

my current nerd font is **Iosevka** (`ttf-iosevka-nerd`). It is manually configured in blink-cmp (`~/.config/nvim/lua/plugins/blink-cmp.lua`)

some plugins e.g. `blink-cmp` doesn't play nice with vscode, the workaround is referenced from [the vscode-neovim docs](https://github.com/vscode-neovim/vscode-neovim?tab=readme-ov-file#neovim-configuration) (NOTE: this may be removed). If it doesn't work, move the incompatible files from `plugins/` to `plugins_disabled` working with vscode
