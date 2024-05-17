// not all themes require every one of these options
#import "@local/notebookinator:1.0.1": *

#show: create-body-entry.with(
  title: "My Awesome Entry",
  type: "identify", // The type of the entry depends on which theme you're using
  date: datetime(year: 2024, month: 1, day: 1),
)