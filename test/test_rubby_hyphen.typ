#set text(
  lang: "nan",
  font: (
    "芫荽",
    "Noto Sans TC",
    "DejaVu Sans",
  ),
  size: 13pt,
  fallback: true,
)
#set page(margin: 2cm)
#set par(leading: 2em)

#import "@preview/rubby:0.10.2": get-ruby

#let ruby = get-ruby(
  size: 0.65em,
  dy: 2pt,
  pos: top,
  alignment: "center",
  delimiter: "|",
  auto-spacing: true,
)

#let tw = ruby

= Testing Double Hyphen Solutions

== Original (causes error):
// This will error: #tw[--buē][未]

== Solution 1: Using text() function to escape
#tw[#text("--buē")][未]

== Solution 2: Using raw text
#tw[#raw("--buē")][未]

== Solution 3: Using string concatenation
#tw[#("-" + "-buē")][未]

== Solution 4: Using Unicode em dash
#tw[—buē][未]

== Solution 5: Using Unicode en dash
#tw[–buē][未]

== Solution 6: Using escaped hyphens
// This errors: #tw[\-\-buē][未]

== Solution 7: Using literal string
// Let's test: #tw[`--buē`][未]

== Solution 8: Two hyphens with zero-width space
#tw[-​-buē][未]

== Solution 9: Using box() to wrap content
// This errors: #tw[#box("--buē")][未]

== Full sentence test:
#tw[lí][你] #tw[hó][好]！#tw[lí][你] #tw[tsia̍h][食] #tw[pá][飽] #tw[#text("--buē")][未]？
