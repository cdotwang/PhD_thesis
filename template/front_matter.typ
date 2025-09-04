#let preface(
    english_title: "",
    dutch_title: "",
    cover_info: "",
    degree: "",
    printing_time: "",
    ISBN: "",
    DOI: "",
    printed_by: "",
    supervisor: "",
    defense_date: "",
    author: "",
    author_cn: "",
    author_birth: "",
    author_funding: "",
    prologue: "",
) = {
    set page(
        width: 170mm,
        height: 240mm,
    )

    set text(
        font: "Libertinus Serif",
        size: 10pt,
        lang: "en",
    )

    set par(justify: true, leading: 1em)

    v(30%)

    align(center, text(size: 25pt, weight: "bold", english_title))
    align(center, line(length: 70%))

    pagebreak()

    [*Cover:* #h(0.5em) #cover_info]

    v(1fr)

    [
        #degree Thesis, Utrecht University, The Netherlands, #printing_time \
        #v(0.5em)
        ISBN: #ISBN \
        DOI: #DOI \
        Printed by: #printed_by \
        #v(0.5em)
        A digital version of this thesis is available at: #link("https://colloid.nl/publications/theses")[`https://colloid.nl/publications/theses`]
    ]

    pagebreak()

    set par(leading: 0.65em)

    v(3em)

    align(center, text(size: 20pt, weight: "bold", english_title))
    align(center, line(length: 50%))
    align(center, text(size: 20pt, lang: "nl", dutch_title))
    align(center, [(met een samenvatting in het Nederlands)])

    v(1fr)

    align(center, text(size: 14pt, [Proefschrift]))

    v(1em)

    align(
        center,
        text(
            lang: "nl",
            [ter verkrijging van de graad van doctor aan de Universiteit Utrecht op gezag van de rector magnificus, prof. dr. ir. Wilco Hazeleger, ingevolge het besluit van het college voor promoties in het openbaar te verdedigen op #defense_date],
        ),
    )
    align(center, [door])
    align(center, text(font: "Kaiti SC", size: 16pt, author_cn))

    v(1em, weak: true)

    align(center, text(size: 14pt, weight: "bold", author))
    align(center, [geboren op #author_birth])

    pagebreak()

    [*Promotor:* #h(0.5em) #supervisor]

    v(1fr)

    [This research was supported by #author_funding.]

    pagebreak()

    align(center + horizon, text(font: "Snell Roundhand", size: 24pt, prologue))

    pagebreak(to: "odd")
}
