#import "./packages.typ": notebookinator
#import notebookinator: *
#import themes.radial.components

#include "./glossary.typ"

#create-appendix-entry(title: "Glossary")[
  #components.glossary()
]

#create-appendix-entry(title: "Programming")[
    Here's information about how we programmed the robot.

    #lorem(500)
]
