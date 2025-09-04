#let booktabs(..args, cells) = {
    table(
        stroke: none,
        ..args,
        table.hline(y: 0),
        table.hline(y: 1, stroke: .5pt),
        cells,
        table.hline(),
    )
}
