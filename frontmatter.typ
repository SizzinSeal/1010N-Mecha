#import "/packages.typ": notebookinator, codetastic
#import notebookinator: *
#import themes.radial.components: *
#import codetastic: qrcode

#let label(label: "", size: 0.7em) = {
  let data = entry-type-metadata.at(label)
  let colored-image = utils.change-icon-color(raw-icon: data.icon, fill: white)

  box(fill: data.color, outset: 3pt, radius: 1.5pt)[
    #set align(center + horizon)
    #image.decode(colored-image, height: size)
  ]
}

#create-frontmatter-entry(
  title: "About This Notebook",
)[
We use [Typst](https://typst.app/) so we can make use of advanced automatics so we can spend our time actually writing entries and not worry about the details like the date, updating the glossary and table of contents, etc. This allows us to spend more time to ensure quality notebook entries. Typst uses a syntax similar to that of Markdown, but with additional features and control. As such, we write files with the `.typ` file extension before compiling the notebook as a single PDF.

Below is some example code, written by Area 53 Robotics, whose [notebookinator](https://github.com/The-Notebookinator/notebookinator) template is used for this notebook.

```typ
  Just some ordinary text // Turns into text

  #grid( // Creates a grid layout
    columns: (1fr, 1fr),
    gutter: 20pt,
    pro-con(
      pros: [ // Turns into a table of pros and cons (appears on the right side)
        - good
        - better ],
      cons: [
        - bad
        - worse
      ],
    ),
    [
      Some content on the left side *Bold content on the left side*
    ],
  )
  ```

This would would render into:

Just some ordinary text // Turns into text

#grid( // Creates a grid layout
  columns: (1fr, 1fr),
  gutter: 20pt,
  pro-con(
    pros: [ // Turns into a table of pros and cons (appears on the right side)
      - good
      - better ],
    cons: [
      - bad
      - worse
    ],
  ),
  [
    Some content on the left side

    *Bold content on the left side*
  ],
)

== Source Code

#grid(
  columns: (1fr, 1fr),
  gutter: 20pt,
  [
    The source code can be found here: #link("https://github.com/SizzinSeal/1010N-Mecha").
    Alternatively, you can use the QR code to the right.
  ],
  qrcode("https://github.com/SizzinSeal/1010N-Mecha", size: 5pt),
)

#colbreak()

= Why Digital?

Digital notebooks are more time-efficient than physical notebooks. We can, on average, write at about 20 words per minute, but we can type, on avage, about 80 words per minute. Inserting images is also much simpler, as well as writing code, making diagrams, etc.

== Why Typst?

Typst give us a whole host of benefits:

- Management and collaboration with git or the online editor
- Verification of history with git
- Native scripting support
- Native support for rendering math
- Native support for rendering code

This gives us many more capabilities than something like Google Docs/Slides
would.

== How to Read Entries

Entries all have a type, which is displayed in the top left corner, as well as
in the table of contents. Most types correspond with a step in the engineering
design process, but some do not.

Here are the existing types:

#let spacing = 3pt

#stack(
  spacing: 10pt,
  [#box(baseline: 30%, label(label: "identify", size: 1.7em)) #h(10pt) *Identify the problem*],
  [#box(baseline: 30%, label(label: "brainstorm", size: 1.7em)) #h(10pt) *Brainstorm possible solutions*],
  [#box(baseline: 30%, label(label: "decide", size: 1.7em)) #h(10pt) *Decide on the optimal solution*],
  [#box(baseline: 30%, label(label: "build", size: 1.7em)) #h(10pt) *Build the solution*],
  [#box(baseline: 30%, label(label: "program", size: 1.7em)) #h(10pt) *Program the solution*],
  [#box(baseline: 30%, label(label: "test", size: 1.7em)) #h(10pt) *Test the solution*],
  [#box(baseline: 30%, label(label: "management", size: 1.7em)) #h(10pt) *Team management*],
  [#box(baseline: 30%, label(label: "notebook", size: 1.7em)) #h(10pt) *Notebook Metadata*],
)

]

#create-frontmatter-entry(
  title: "Our Team",
)[
  = Liam Teale
  #grid(
  columns: (1fr, 1fr),
  gutter: 20pt,
  [
    #text(16pt)[
      - Builder
      - Designer
      - Driver
      - Programmer
    ]
    #text(12pt)[
      "I've got 4 years robotics experience across VRC, FRC, and Bell AVR. I've competed as 1010N, 1010A, 1011A, 10012W, 6364, and 6464A. I'm an expert in designing, driving, and programming. My code powers the autonomous routines of world class teams, including JACKS, and 229V. I mentor 10012G, who holds the highest middle school skills autonomous score."
    ]
  ],
  image("./assets/mugshots/liam.png")
)
]

#create-frontmatter-entry(title: "Table of Contents")[
  #toc()
]