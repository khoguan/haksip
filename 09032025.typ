#set text(
  lang: "nan",
  font: (
    // "Gentium Plus",
    // "Times New Roman",
    "芫荽",
    "Noto Sans TC",  // Primary font for Chinese
    "DejaVu Sans",       // Additional fallback
    // "Arial Unicode MS",  // Wide Unicode coverage
  ),
  size: 12pt,
  fallback: true,  // Enable automatic font fallback
)

= 2025-09-03 學習日誌 Ha̍k-si̍p Ji̍t-tsì

- [ ] 開始學習 Typst 排版系統

== 開始學習 Typst 排版系統

== 安裝 *community.pack.typst*
裝好了後，`typ` 檔第一逝標題後壁會出現 virtual text:
`Profile | Export PDF | Preview | More ..`，但是無法度點，
毋知是毋是做好看个。

```lua
return {
  { "kaarmu/typst.vim", ft = { "typst" } },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "tinymist" })
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "tinymist" })
    end,
  },
  {
    "chomosuke/typst-preview.nvim",
    cmd = { "TypstPreview", "TypstPreviewToggle", "TypstPreviewUpdate" },
    build = function() require("typst-preview").update() end,
    opts = {
      dependencies_bin = {
        tinymist = "tinymist",
      },
    },
  },
}
```

== 測試文本 Tshik-tshì Bûn-pún

// Test Taiwanese Romanization
Pe̍h-ōe-jī: Tâi-oân-ōe \
Tâi-lô: Tâi-uân-uē \
臺灣話  台灣話

// Tone marks test
a á à â ǎ ā a̍ a̋ \
e é è ê ě ē e̍ e̋ \
o ó ò ô ǒ ō o̍ ő
