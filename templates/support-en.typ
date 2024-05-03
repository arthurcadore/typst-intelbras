#let support(
  title: "Typst Support Model - Intelbras",
  subtitle: "Network Technician Support",
  authors: "Arthur Cadore M. Barcella",
  date: none,
  doc,
) = {

  // Defining the document structure
  set document(title: title, author: authors)

  set block(spacing: 1.5em)

  // Defining the document style
  set page(
    numbering: "1",
    paper: "a4",
    margin: (top: 3cm, bottom: 2cm, left: 3cm, right: 2cm),
    footer: "Network Support - Intelbras",
  )

  // Defining the text style and size
  set text(size: 12pt, font: "Times New Roman")
  
  // Defining the paragraph style
  set par(
    first-line-indent: 1.5cm,
    justify: true,
    leading: 0.65em,
    linebreaks: "optimized",
  )
  // Defining the heading style
  set heading(numbering: "1.")

  // Defining the list style
  set math.equation(numbering: "(1)")


  // Defining the main image style
  align(center)[
    #image("../assets/intelbras-logo.svg", width: 30em)
  ]

  // Defining the title style
  align(horizon + center)[
    #text(20pt, title, weight: "bold")
    #v(1em)
    #text(15pt, subtitle, weight: "regular")
    #v(15em)
  ]

  // Defining the authors and date style
  align(bottom + left)[
    #text(list(..authors, marker: "", body-indent: 0pt), weight: "bold")
    #text(date)
  ]

  // Defining the abstract style
  pagebreak()

  // Defining the table of contents style
  show outline.entry.where(level: 1): it => {
    strong(it)
  }
  outline(title: [Summary #v(1.5em)], indent: 1.5em)

  pagebreak()
  doc
}
