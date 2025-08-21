# Learn to Write Neovim Plugins in Lua Language

## Learning Plan by Warp AI

以下是 Warp AI 所擬个計畫，無調整格式過

1. Set-up & Prerequisites
Explain required tools (Neovim ≥0.9 with LuaJIT, Git, ripgrep), confirm the existing **lazy.nvim** manager, night-owl colorscheme, and demonstrate how to open a scratch plugin playground inside `~/.config/nvim/lua/dev/` so learners can experiment without touching production code.

2. Plugin Anatomy Deep-Dive
Describe the runtime path, how `runtimepath/lua/<module>/init.lua` becomes `require('<module>')`, standard layouts (`lua/`, `plugin/`, `ftplugin/`, `after/`, `doc/`). Include diagrams and a live inspection using `:lua print(vim.inspect(vim.o.rtp))`.

3. Hello-World Plugin
Walk through writing `lua/hello/init.lua` that registers a user command (`:HelloWorld`) and a keymap (`<leader>hw`) via `vim.api.nvim_create_user_command` and `vim.keymap.set`. Show adding it to lazy:

```lua
-- ~/.config/nvim/lua/plugins/hello.lua
return {
  dir = "~/dev/hello", keys = { { "<leader>hw", "<cmd>HelloWorld<cr>", desc = "Hello plugin" } }
}
```
4. Text-Manipulation Plugin (Case Converter)
Create `lua/casey/init.lua` exposing `toggle_case()` that flips snake⇄camel on visual/normal ranges. Teach buffer text ops (`vim.api.nvim_buf_get_text`, `set_text`) and motion helpers. Provide tests with `plenary.nvim`’s `busted`.

5. Configurable Utility Plugin
Build `lua/trimspace/init.lua` that auto-strips trailing whitespace on `BufWritePre`, but allows user options:

```lua
require('trimspace').setup({ filetypes = { 'lua','python' }, trim_empty = true })
```

Demonstrate default table, `vim.tbl_deep_extend`, and lazy-loading via `event = "BufWritePre"`.
6. API-Integration Plugin (Telescope Grep-Selection)
Craft `lua/telescope_grep_sel/init.lua` adding a Telescope picker that greps the currently selected text in project. Show use of Telescope’s `pickers`, `finders`, `conf`, mirroring patterns already seen in user’s `dict` plugin. Provide which-key binding under `<leader>tg`.

7. Best Practices Capsule

Markdown section summarizing:
• Namespacing (`local M = {}`)  
• Option merging & validation  
• Loud vs silent error patterns (`vim.notify`)  
• Writing `doc/*.txt` help files (`:h help-writing`)  
• Test harness with `plenary.busted` & GitHub CI  
• Profiling (`:lua vim.loop.hrtime()`) & caching strategies.
8. Integrating with Existing Config
1. Where to save plugin specs (`lua/plugins/*.lua`).  
2. Reusing nightly night-owl palette for highlight groups (`require'vim.highlight'.create`).  
3. Adding keys so which-key auto-groups under existing categories (`group = "word/dictionary"` etc.).  
4. Conventions: snake_case filenames, English comments with Hoklo labels to match current style.
9. UI, Windows & Async Mastery
Tutorial on floating windows (`nvim_open_win`), pop-up menus, `vim.ui.select`, job control (`vim.system`, `vim.loop.spawn`), and how to wrap async calls in Lua coroutines for non-blocking UX.
10. Distribution & Packaging
Show turning local plugin into Git repo, tagging releases, generating rockspec for luarocks (optional), writing README badges, and listing on Awesome-Neovim. Include version bump workflow compatible with lazy lockfile.
11. Deep Analysis of Existing dict.nvim
Step-by-step code tour: startup cache building, Telescope picker wiring, floating definition window. Identify improvement ideas (use vim.fs for paths, async caching, convert globals to locals, add spec tests, add which-key descriptions, migrate border style to night-owl colors).
12. Capstone Exercises & Next Steps
Provide incremental homework: 1) add live preview to case converter 2) refactor dict.nvim with async jobstart 3) publish telescope_grep_sel. Conclude with resource links (lua-guide, `:h api`, TJ’s plugin videos).
