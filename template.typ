#let cardiff-poster(
  project-title: none,
  author: none,
  author-email: none,
  school: none,
  supervisor: none,
  logo: none,
  body,
) = {
  set page(
    paper: "a1",
    flipped: false,
    margin: (top: 0cm, left: 0cm, right: 0cm),
  )
  box(fill: rgb("#d73648"), width: 100%, height: 11cm)[
    #grid(
      columns: (8cm, 1fr, 8cm),
      align: center + horizon,
      inset: (top: 1.3cm),
      image(logo, width: 6cm),
      align(center)[#stack(
        spacing: 39pt, // between title and author
        dir: ttb,
        text(fill: white, size: 60pt, weight: "bold", par(leading: 0.4em, project-title)),
        text(
          fill: white,
          size: 40pt,
        )[#author | #author-email],
      )],
      image("GMMR.png", width: 7cm),
    )
  ]
  set text(lang: "GB", size: 25pt)
  set image(height: 10cm)
  show heading: it => [
    #set align(center)
    #set text(rgb("#b62137"))
    #stack(spacing: 20pt, it.body, line(length: 100%))
  ]
  show figure: set text(25pt)
  // place(line(start: (50%, 0%), length: 95%, angle: 90deg, stroke: 4pt + rgb("#b62137")))
  block(inset: (x: 80pt, top: 20pt))[
    #columns(2, gutter: 2em)[
      #body
    ]
  ]
}
