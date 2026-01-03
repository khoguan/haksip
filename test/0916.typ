#set text(
  lang: "nan",
  font: (
    // "Gentium Plus",
    // "Times New Roman",
    "芫荽",
    "Noto Sans TC",  // Primary font for Chinese
    "DejaVu Sans",       // Additional fallback
  ),
  size: 13pt,
  fallback: true,  // Enable automatic font fallback
)
#set page(margin: 2cm)
#set par(leading: 2em)  // Adjust line spacing (default is 0.65em)

// Add spacing after headings
#show heading.where(level: 2): it => {
  it
  v(0.8em)  // Add vertical space after level 2 headings
}

#import "@preview/rubby:0.10.2": get-ruby

#let ruby = get-ruby(
  size: 0.65em,         // Ruby font size
  dy: 2pt,             // Vertical offset of the ruby
  pos: top,            // Ruby position (top or bottom)
  alignment: "center", // Ruby alignment ("center", "start", "between", "around")
  delimiter: "|",      // The delimiter between words
  auto-spacing: true,  // Automatically add necessary space around words
)
= #ruby[Tâi-oân][臺灣] #ruby[Bân-lâm-gí][閩南語] #ruby[kàu-tsâi][教材]

#let tw=ruby

== #ruby[Tē-it khò][第一課]：#ruby[Būn-hāu][問候]

#tw[lí][你]#tw[hó][好]！#tw[lí][你]#tw[tsia̍h][食]#tw[pá][飽]#tw[#text("--buē")][未]？

#tw[guá][我] #tw[tsin][真] #tw[huann-hí][歡喜] #tw[khuànn][看] #tw[tio̍h][著] #tw[lí][你]。
