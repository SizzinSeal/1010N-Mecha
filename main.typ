#import "@local/notebookinator:1.0.1": *

#import themes.radial: radial-theme, components

#show: notebook.with(theme: radial-theme, cover: align(center + horizon)[
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