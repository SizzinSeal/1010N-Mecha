#import "/packages.typ": notebookinator
#import notebookinator: *
#import themes.radial: radial-theme, components

#show: notebook.with(
  team-name: "1010N",
  season: "Over Under",
  year: "2023-2024",
  theme: radial-theme, cover: align(center + horizon)[
  #text(size: 24pt, font: "Tele-Marines")[
    #text(size: 28pt)[
      1010N

      Engineering Notebook
    ]

    2023 - 2024
    #line(length: 50%, stroke: (thickness: 2.5pt, cap: "round"))
    Over Under

  ]
])
#include "/frontmatter.typ"

#include "entries/entries.typ"

#include "./appendix.typ"