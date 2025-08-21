# Markdown Partial Formatting Solution

## The Problem

Most markdown formatters (prettier, prettierd, mdformat, etc.) don't
properly support partial text selection formatting when used through
conform.nvim. They tend to format the entire buffer even when you
select specific lines.

## The Solution

I've created a custom Neovim plugin that provides TRUE partial text
formatting for markdown files.

### Key Features

- **`<Leader>lm`** in visual mode: Formats ONLY the selected text
- Multiple formatter options with different strengths
- Uses stdin/stdout approach to avoid whole-buffer formatting

## Available Formatters

### For Partial Selection (`<Leader>lm` in visual mode)

1. **mdformat (Python)** - Best overall, clean consistent formatting,
   handles lists well
2. **deno fmt (Deno)** - Fast, reliable, built-in to Deno
3. **remark (Node.js)** - Highly configurable, good for lists
4. **prettier (Node.js)** - Popular but may have issues with partial selection
5. **pandoc (Universal)** - Powerful, now properly handles lists with GFM format
6. **native vim gq** - CJK-aware, works everywhere, no external dependencies

## Usage Instructions

### Visual Mode (Partial Formatting)

1. Open a markdown file: `nv test-markdown-formatters.md`
2. Select lines 35-37 (or any lines you want)
3. Press `<Leader>lm` (lowercase L, lowercase M)
4. Choose a formatter from the menu
5. ONLY the selected lines will be formatted!

### Other Commands

- **`<Leader>lf`** - Format with default formatter (may format whole buffer)
- **`<Leader>lF`** - Choose formatter (may format whole buffer)  
- **`<Leader>lM`** - Show markdown formatter info (normal mode)
- **`gq`** - Vim's native formatting (works on selection)

## Technical Details

The plugin works by:
1. Extracting only the selected text
2. Passing it through the formatter via stdin
3. Replacing only the selected lines with the formatted output
4. Preserving the rest of the document unchanged

## Files Created/Modified

1. `~/.config/nvim-as1/lua/plugins/format.lua` - Updated formatter configurations
2. `~/.config/nvim-as1/lua/plugins/markdown-partial-format.lua` - Main partial formatting plugin
3. `~/.config/nvim-as1/lua/plugins/markdown-formatter-selector.lua` - Formatter selection helper

## Testing

Try selecting these lines and pressing `<Leader>lm`:
- This    line   has    extra    spaces
- This     one      too
- And    this     one    as    well

The formatter will clean up ONLY these lines without touching the rest of the document!
