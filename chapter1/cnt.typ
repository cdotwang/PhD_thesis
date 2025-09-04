#import "@preview/cetz:0.4.1": canvas, draw, tree
#import "@preview/cetz-plot:0.1.2": plot

#set page(width: auto, height: auto, margin: 2pt)

#canvas(length: 1cm, {
    import draw: *
    let cnt_body(a, x) = {
        -a * calc.pow(x, 3)
    }

    let cnt_surface(b, x) = {
        b * calc.pow(x, 2)
    }

    let a = 0.1
    let b = 2.0
    let critical_r = 2 * b / (3 * a)
    let top_energy = 4 * calc.pow(b, 3) / (27 * calc.pow(a, 2))

    set-style(axes: (padding: 0.2, stroke: (thickness: 1pt), mark: (size: 0.2, angle: 45deg), shared-zero: false))

    plot.plot(
        size: (8, 5),
        axis-style: "school-book",
        x-tick-step: none,
        y-tick-step: none,
        x-label: none,
        y-label: none,
        name: "cnt",
        {
            plot.add(
                domain: (0, 8),
                x => cnt_body(a, x),
                style: (stroke: (thickness: 1.2pt, paint: blue, dash: "dashed")),
            )

            plot.add(
                domain: (0, 8.2),
                x => cnt_surface(b, x),
                style: (stroke: (thickness: 1.2pt, paint: red, dash: "dashed")),
            )

            plot.add(
                domain: (0, 21),
                x => cnt_body(a, x) + cnt_surface(b, x),
                samples: 100,
                style: (stroke: (thickness: 1.2pt, paint: black)),
            )

            plot.add-vline(critical_r, min: 0, max: top_energy, style: (
                stroke: (paint: red, dash: "dashed", thickness: 0.6pt),
                mark: (symbol: ">", scale: 20, fill: red, angle: 5deg, stroke: (paint: red, thickness: 0pt)),
            ))
            plot.add-anchor("x", (22, -15))
            plot.add-anchor("y", (-2.5, 150))
            plot.add-anchor("r*", (critical_r, -15))
            plot.add-anchor("delta_g", (critical_r + 0.2, top_energy / 2))
            plot.add-anchor("surface", (4, 120))
            plot.add-anchor("volume", (4, -45))
        },
    )

    content(
        "cnt.x",
        text(size: 12pt, [$r$]),
        anchor: "south",
    )

    content(
        "cnt.y",
        text(size: 12pt, [$Delta G$]),
        anchor: "west",
    )

    content(
        "cnt.r*",
        text(size: 12pt, [$r^*$]),
        anchor: "south",
    )

    content(
        "cnt.delta_g",
        text(red, size: 12pt, [$Delta G^*$]),
        anchor: "west",
    )

    content(
        "cnt.surface",
        text(red, font: "SF Pro Rounded", weight: "light", size: 10pt, [surface energy]),
        anchor: "south",
    )

    content(
        "cnt.volume",
        text(blue, font: "SF Pro Rounded", weight: "light", size: 10pt, [volume energy]),
        anchor: "north",
    )
})
