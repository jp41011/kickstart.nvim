# AGENTS.md

## Repo Shape
- This is a Kickstart-derived Neovim config; `init.lua` is the real entrypoint.
- `init.lua` bootstraps `lazy.nvim`, defines most active plugins inline, and imports `{ import = 'custom.plugins' }`.
- Add personal plugin specs under `lua/custom/plugins/*.lua`; `lua/kickstart/plugins/*.lua` are optional examples and are not loaded unless uncommented in `init.lua`.
- `after/ftplugin/gitcommit.lua` changes git commit buffers to color columns `50,72` and `rose-pine-main`.

## Commands
- Format/check Lua with `stylua --check .`; apply formatting with `stylua .`.
- There is no package manifest or test runner in this repo; do not invent `npm`, `luarocks`, `busted`, or `luacheck` commands.
- In Neovim, use `:checkhealth kickstart` for environment checks, `:Lazy` for plugin state, and `:Mason` for installed LSP/tools.

## Formatting
- StyLua is configured in `.stylua.toml`: 2-space indent, 160 columns, Unix line endings, prefer single quotes, omit call parentheses where StyLua allows.
- CI only runs `stylua --check .`, and the workflow is gated to `github.repository == 'nvim-lua/kickstart.nvim'`; local/fork changes may not get CI coverage.

## Plugin Gotchas
- Keep `lazy-lock.json` in sync when plugin pins change; it is intentionally tracked here.
- `mason-tool-installer` installs `lua_ls`, `stylua`, and `prettier`; `mason-lspconfig` intentionally has `ensure_installed = {}`.
- `telescope-fzf-native.nvim` uses a CMake build command but is still gated by `vim.fn.executable 'make'`; Windows/build-tool fixes may need both settings.
- `LuaSnip` skips its regex build on Windows or when `make` is unavailable.
- Treesitter uses the `main` branch API, installs parsers in `init.lua`, starts highlighting with `pcall(vim.treesitter.start)`, and disables Treesitter indent only for Ruby.

## Config Notes
- Keep `vim.g.mapleader` and `vim.g.maplocalleader` before plugin setup.
- `vim.g.have_nerd_font = true`; UI/icon behavior depends on that flag.
- README content is mostly upstream Kickstart guidance; trust `init.lua` and local `lua/custom` files for the current active config.
