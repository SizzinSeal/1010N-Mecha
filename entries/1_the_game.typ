// not all themes require every one of these options
#import "/packages.typ": notebookinator
#import notebookinator: *
#import themes.radial: radial-theme, components

#show: create-body-entry.with(
  title: "Over Under - The Game",
  date: datetime(year: 2024, month: 5, day: 18),
  type: "identify",
  author: "Liam Teale",
  witness: "Alexander Teale",
)

= Overview

Over Under is played on a 12' x 12' field. The goal of the game is to score points by moving game elements known as "tri-balls" into nets, as well as to elevate the robot above the floor. The game can played in matches, where 4 robots forming 2 alliances compete head to head, with the winning alliance being the one that scores the most points. The game can also be played as a "skills" challenge, where 1 robot tries to score as many points as possible in 60 seconds.

== The Field - Deep Dive

The field itself is made of foam tiles and measures 12' x 12'. It's border can be made of steel, or plastic.

