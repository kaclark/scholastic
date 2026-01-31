#set quote(block: true)
#show link: set text(fill: blue)
#set text(fill: white, font: "DejaVu Sans Mono",  size: 10pt)

#let title = align(center, text(17pt)[ *Linear Algebra Course* ])
#grid(
  columns: (auto, 1fr),
  [#pad(y: 10pt, title)],
  grid.hline(stroke: orange)
)

#show link: set text(fill: blue)

== Lectures
- #link("lectures/lecture-1-the-geometry-of-linear-equations.html")[Lecture One: The Geometry of Linear Algebra]

== Problem Sets
- #link("problemsets/problemset-1.html")[Problem Set One]

== Exams
- #link("exams/exam-1.html")[Exam One]
