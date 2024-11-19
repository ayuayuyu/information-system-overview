#let sans = "Hiragino Mincho ProN"
#let p = "Hiragino Kaku Gothic ProN"

#let conf(
  title: "タイトル",
  date: datetime.today(),
  student-id: "学籍番号",
  name: "名前",
  doc,
) = {
  set document(title: title, author: name)
  set page(
    paper: "a4",
    margin: (bottom: 1.75cm, top: 2.25cm),
  )
  set text(
    font: p,
    size: 15pt,
  )



  set page(
    footer: [
      // #align(center)[#counter(page).display("1")]
      #align(center)[ #counter(page).display("1") ]

    ]
  )

  v(10pt)
  align(center)[
    #text(font:sans,25pt, weight: 550)[#title]
  ]
  v(10pt)
  align(right)[
    #text(font:sans,15pt, weight: 400)[
      #date \
      #student-id #h(10pt) #name
    ]
  ]
  v(10pt)

  set par(
    leading: 0.78em,
    first-line-indent: 14pt,
    justify: true
  )
  // show par: set block(spacing: 1em)
  set par(spacing: 1em)
  
  set heading(numbering: (..nums) => {
    nums.pos().map(str).join(".") + " "
  })
  show heading.where(level: 1): it => {
    counter(math.equation).update(0)
    set text(weight: "bold", size: 16pt, font: sans)
    let pre_chapt = text()[
        #numbering("1", ..counter(heading).at(it.location())).
    ]
    text()[
      #v(20pt)
      #pre_chapt#it.body \
      #v(10pt)
    ]
  }
  show heading.where(level: 2): it => {
    set text(weight: "bold", size: 15pt, font: sans)
    let pre_chapt = text()[
      #numbering(it.numbering, ..counter(heading).at(it.location()))
    ]
    text()[
      #v(20pt)
      #pre_chapt#it.doc \
      #v(10pt)
    ]
  }
  show heading: it => {
    set par(first-line-indent: 0pt)
    it
  }
  


  counter(page).update(1)

  doc
}
