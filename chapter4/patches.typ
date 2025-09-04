#import "@preview/cetz:0.4.1": *

#set page(
    width: auto,
    height: auto,
    margin: 2pt,
)

#canvas(length: 2cm, {
    import draw: *

    set-transform((
        (-0.2, 1, 0, 0), // x' = z - 0.2y     (neue x-Achse kommt aus z)
        (0.5, 0, -1, 0), // y' = -x + 0.5y    (neue y-Achse kommt aus x)
        (0, 0, 0, 0), // z' = 0            (Projektion auf xy-Ebene)
        (0, 0, 0, 1), // Homogene Koordinate
    ))


    // let atom(position: (), color: red, radius: 0.03, name: none) = {
    //     circle(position, radius: radius, stroke: none, name: name,
    //     // fill: gradient.radial(
    //     //     white,
    //     //     color,
    //     //     focal-center: (30%, 30%),
    //     //     focal-radius: 0%,
    //     // )
    //     fill: gradient.radial(
    //     color.lighten(75%),
    //     color,
    //     color.darken(15%),
    //     focal-center: (30%, 25%),
    //     focal-radius: 5%,
    //     center: (35%, 30%),
    // ))
    // }
    //
    let atom(pos, color: red, radius: 0.03, element: none, name: none) = {
        // Draw base circle with the main color
        circle(pos, radius: radius, stroke: none, fill: color)

        // Draw gradient overlay for 3D shading effect
        circle(pos, radius: radius, stroke: none, fill: gradient.radial(
            color.lighten(75%),
            color,
            color.darken(15%),
            focal-center: (30%, 25%),
            focal-radius: 5%,
            center: (35%, 30%),
        ))

        // Add element label if provided
        if element != none {
            content(
                pos,
                text(fill: white, weight: "bold", size: 10pt)[#element],
                anchor: "center",
                name: name,
            )
        }
    }

    let inner_dash = "densely-dashed"
    let shell_dash = "densely-dotted"

    {
        let edge_length = 2.0
        let scale = 0.7

        let a = (calc.sqrt(3) / 3 * edge_length, 0, -calc.sqrt(6) / 12 * edge_length)
        let b = (-calc.sqrt(3) / 6 * edge_length, 0.5 * edge_length, -calc.sqrt(6) / 12 * edge_length)
        let c = (-calc.sqrt(3) / 6 * edge_length, -0.5 * edge_length, -calc.sqrt(6) / 12 * edge_length)
        let d = (0, 0, calc.sqrt(6) / 4 * edge_length)

        let vertex_patches = (a, b, c, d).map(p => p.map(v => v * scale))
        let facet_patches = ((a, b, c), (a, b, d), (a, c, d), (b, c, d)).map(vertices => {
            let (v1, v2, v3) = vertices.map(p => p.map(v => v * scale))
            return (
                (v1.at(0) + v2.at(0) + v3.at(0)) / 3,
                (v1.at(1) + v2.at(1) + v3.at(1)) / 3,
                (v1.at(2) + v2.at(2) + v3.at(2)) / 3,
            )
        })


        let rounded_triangle = merge-path(
            {
                let rounded_radius = 0.2
                let height = calc.sqrt(3) / 6 * edge_length + rounded_radius
                for i in range(3) {
                    line((-0.5 * edge_length, -height), (0.5 * edge_length, -height))
                    arc((0.5 * edge_length, -height), start: -90deg, stop: 30deg, radius: rounded_radius)
                    rotate(z: 120deg)
                }
            },
            close: true,
            stroke: (dash: shell_dash, thickness: 0.3pt, paint: blue),
        )


        on-xy(z: -calc.sqrt(6) / 12 * edge_length, {
            rotate(z: 270deg)
            rounded_triangle
        })

        rotate(y: 19.48deg)
        on-yz(x: -calc.sqrt(6) / 12 * edge_length, {
            rotate(z: -90deg)
            rounded_triangle
        })
        rotate(y: -19.48deg)


        let inner_pair = (
            (a, b),
            (a, c),
            (a, d),
            (b, c),
            (b, d),
            (c, d),
        )
        for (v1, v2) in inner_pair {
            let v1 = v1.map(v => v * scale)
            let v2 = v2.map(v => v * scale)
            line(v1, v2, stroke: (dash: inner_dash, thickness: 0.1pt, paint: blue.transparentize(50%), cap: "round"))
        }

        for patch in vertex_patches {
            on-yz(x: patch.at(0), {
                atom((patch.at(2), patch.at(1)), color: green)
            })
        }
        for patch in facet_patches {
            on-yz(x: patch.at(0), {
                atom((patch.at(2), patch.at(1)), color: red)
            })
        }
        line(
            a,
            b,
            d,
            close: true,
            stroke: (thickness: 0.2pt, paint: blue.transparentize(30%), join: "round"),
            fill: blue.transparentize(90%),
        )
        line(
            a,
            c,
            d,
            close: true,
            stroke: (thickness: 0.2pt, paint: blue.transparentize(30%), join: "round"),
            fill: blue.transparentize(90%),
        )

        line(b, c, stroke: (dash: "dashed", thickness: 0.2pt, paint: blue.transparentize(30%), cap: "round"))
    }

    on-yz(x: 0, {
        atom((0.9, 1.2), color: green, radius: 0.05)
        content((0.9, 1.4), anchor: "west", text(font: "SF Pro Rounded", size: 12pt)[vertex patch])
        atom((0.6, 1.2), color: red, radius: 0.05)
        content((0.6, 1.4), anchor: "west", text(font: "SF Pro Rounded", size: 12pt)[facet patch])
    })

    translate(y: 4)

    {
        let edge_length = 2.0
        let scale = 0.7

        let a = (0, 0, -calc.sqrt(2) / 2 * edge_length)
        let b = (calc.sqrt(2) / 2 * edge_length, 0, 0)
        let c = (0, calc.sqrt(2) / 2 * edge_length, 0)
        let d = (-calc.sqrt(2) / 2 * edge_length, 0, 0)
        let e = (0, -calc.sqrt(2) / 2 * edge_length, 0)
        let f = (0, 0, calc.sqrt(2) / 2 * edge_length)

        let vertex_patches = (a, b, c, d, e, f).map(p => p.map(v => v * scale))

        let faces = (
            (a, b, c),
            (a, c, d),
            (a, d, e),
            (a, e, b),
            (f, b, c),
            (f, c, d),
            (f, d, e),
            (f, e, b),
        )

        let facet_patches = faces.map(face => {
            let (v1, v2, v3) = face.map(p => p.map(v => v * scale))
            return (
                (v1.at(0) + v2.at(0) + v3.at(0)) / 3,
                (v1.at(1) + v2.at(1) + v3.at(1)) / 3,
                (v1.at(2) + v2.at(2) + v3.at(2)) / 3,
            )
        })

        let rounded_radius = 0.2
        let edge = edge_length + 2 * rounded_radius
        on-xy(z: 0, {
            rotate(z: 45deg)

            rect((-0.5 * edge, -0.5 * edge), (0.5 * edge, 0.5 * edge), radius: rounded_radius, stroke: (
                dash: shell_dash,
                thickness: 0.3pt,
                paint: orange,
            ))
        })
        on-yz(x: 0, {
            rotate(z: 45deg)
            rect((-0.5 * edge, -0.5 * edge), (0.5 * edge, 0.5 * edge), radius: rounded_radius, stroke: (
                dash: shell_dash,
                thickness: 0.3pt,
                paint: orange,
            ))
        })

        let inner_pair = (
            (a, b),
            (a, c),
            (a, d),
            (a, e),
            (b, c),
            (b, e),
            (c, d),
            (d, e),
            (f, b),
            (f, c),
            (f, d),
            (f, e),
        )
        for (v1, v2) in inner_pair {
            let v1 = v1.map(v => v * scale)
            let v2 = v2.map(v => v * scale)
            line(v1, v2, stroke: (dash: inner_dash, thickness: 0.1pt, paint: orange.transparentize(30%), cap: "round"))
        }

        let dash_pair = ((d, a), (d, c), (d, e), (d, f))
        for (v1, v2) in dash_pair {
            line(v1, v2, stroke: (dash: "dashed", thickness: 0.2pt, paint: orange.transparentize(30%), cap: "round"))
        }

        for patch in vertex_patches {
            on-yz(x: patch.at(0), {
                atom((patch.at(2), patch.at(1)), color: green)
            })
        }
        for patch in facet_patches {
            on-yz(x: patch.at(0), {
                atom((patch.at(2), patch.at(1)), color: red)
            })
        }

        for face in faces {
            if d in face {
                continue
            }
            let (v1, v2, v3) = face
            line(
                v1,
                v2,
                v3,
                close: true,
                stroke: (thickness: 0.2pt, paint: orange.transparentize(30%), join: "round"),
                fill: orange.transparentize(90%),
            )
        }
    }
})
