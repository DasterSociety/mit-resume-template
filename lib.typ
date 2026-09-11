#let gap = 0.55em

#let entry(org: none, location: none, title: none, dates: none, note: none, ..body) = {
  assert(
    org != none and title != none and dates != none,
    message: "entry(): `org`, `title` and `dates` are required",
  )
  assert(
    body.named().len() == 0,
    message: "entry(): unexpected named argument " + repr(body.named()),
  )
  let cells = (
    // Row 1 Organization, Location -> Dates
    strong[#org, #location],
    [#dates],
    // Row 2 Degree Bold italic, both columns
    grid.cell(colspan: 2, strong(emph(title))),
  )
  // Row 3: Optional intended note
  if note != none { cells.push(grid.cell(colspan: 2)[#pad(left: 1em)[#note]]) }
  // Row 4: Optional bullets, from the trailing content block
  let bullets = body.pos().at(0, default: none)
  if bullets != none { cells.push(grid.cell(colspan: 2, bullets)) }
  block(below: gap * 1.8, grid(columns: (1fr, auto), align: (
      left,
      right,
    ), column-gutter: 1em, row-gutter: gap, ..cells,))
}

// Margins and text size are MIT CAPD minimums, not preferences. Do not shrink them.
#let mit-resume(
  name: "FULL NAME",
  location: "City, ST",
  email: "email@email.com",
  phone: "(555) 555-5555",
  linkedin: "username", // username only, the URL is built below
  website: "www.website.com", // host only, no scheme
  body,
) = {
  set page(paper: "a4", margin: 0.5in)
  set text(font: "Libertinus Serif", size: 10.5pt)
  set par(justify: true, leading: gap, spacing: 0.8em)
  set list(marker: [•], indent: 0.3em, body-indent: 0.45em)
  show heading: it => block(
    width: 100%,
    above: 1.1em,
    below: 0.4em,
    stroke: (bottom: 1pt),
    inset: (bottom: 0.2em),
  )[
    #text(font: "Libertinus Serif", size: 0.95em, weight: "medium", tracking: 0.08em)[#smallcaps(
      it.body,
    )]
  ]

  // Contact line. Any field set to `none` is dropped from the run.
  let contact = ()
  if location != none { contact.push([#location]) }
  if email != none { contact.push(link("mailto:" + email)[#email]) }
  if phone != none { contact.push([#phone]) }
  if linkedin != none { contact.push(link("https://linkedin.com/in/" + linkedin)[LinkedIn]) }
  if website != none { contact.push(link("https://" + website)[website]) }

  align(center)[
    #text(font: "Copperplate", size: 19pt, weight: "medium")[#name]

    #v(-0.35em)

    #text(size: 10.5pt)[#contact.join([ | ])]
  ]

  body
}
