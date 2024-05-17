// not all themes require every one of these options
#import "/packages.typ": notebookinator
#import notebookinator: *
#import themes.radial: radial-theme, components

#show: create-body-entry.with(
  title: "My Awesome Entry",
  type: "brainstorm", // The type of the entry depends on which theme you're using
  date: datetime(year: 2024, month: 1, day: 1),
)