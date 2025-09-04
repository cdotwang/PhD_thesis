#import "@preview/cetz:0.4.1": *

#set page(
    width: auto,
    height: auto,
    margin: 2pt,
)

#canvas(length: 1cm, {
    import draw: *
    import vector: *
    import decorations: *

    let red = rgb("#f06565")

    let atom(position: (), fill: red, radius: 0.03, name: none) = {
        circle(
            position,
            radius: radius,
            stroke: none,
            name: name,
            fill: fill,
            // fill: gradient.radial(
            //     white,
            //     fill,
            //     focal-center: (30%, 30%),
            //     focal-radius: 0%,
            // )
        )
    }


    let round_it(points: array, radius: 3pt, close: true, stroke: stroke) = {
        let normal(p1, p2) = {
            let dx = p2.at(0) - p1.at(0)
            let dy = p2.at(1) - p1.at(1)
            return norm((dy, -dx))
        }

        let calc_angle(p1, p2, p3) = {
            let v1 = sub(p2, p1)
            let v2 = sub(p3, p2)
            return calc.acos(dot(v1, v2) / (len(v1) * len(v2)))
        }

        let new_points = ()
        let phase = ()
        let angles = ()

        let point_pairs = points.windows(2)
        if close {
            point_pairs.push((points.last(), points.first()))
        }
        for pair in point_pairs {
            let normal_vec = normal(pair.first(), pair.last())
            let p1 = add(pair.first(), scale(normal_vec, radius))
            let p2 = add(pair.last(), scale(normal_vec, radius))
            new_points.push(p1)
            new_points.push(p2)
            phase.push(calc.atan2(normal_vec.at(0), normal_vec.at(1)))
        }

        let triple_points = points.windows(3)
        if close {
            triple_points.push((points.at(-2), points.at(-1), points.at(0)))
            triple_points.push((points.at(-1), points.at(0), points.at(1)))
        }
        for triple in triple_points {
            angles.push(calc_angle(triple.at(0), triple.at(1), triple.at(2)))
        }

        merge-path(
            for pair in new_points.chunks(2).enumerate() {
                let index = pair.at(0)
                let p1 = pair.at(1).at(0)
                let p2 = pair.at(1).at(1)
                line(p1, p2)
                if index < angles.len() {
                    arc(p2, start: phase.at(index), delta: angles.at(index), radius: radius)
                }
            },
            stroke: stroke,
        )
    }

    // Draw tetrahedron with rounded edges
    let edge_length = 2
    let scale_factor = 0.7
    let shell_radius = 0.2

    let a = (calc.sqrt(3) / 3 * edge_length, 0)
    let b = (-calc.sqrt(3) / 6 * edge_length, 0.5 * edge_length)
    let c = (-calc.sqrt(3) / 6 * edge_length, -0.5 * edge_length)

    let vertex_patches = (a, b, c).map(p => p.map(v => v * scale_factor))
    let facet_patches = ((a, b), (b, c), (c, a)).map(edge => {
        let (p1, p2) = edge.map(p => p.map(v => v * scale_factor))
        return ((p1.at(0) + p2.at(0)) / 2, (p1.at(1) + p2.at(1)) / 2)
    })

    let round_tetrahedron(name: none) = group(name: name, {
        for patch in vertex_patches {
            atom(position: patch, fill: green)
        }
        for patch in facet_patches {
            atom(position: patch, fill: red)
        }

        anchor("va", vertex_patches.at(0))
        anchor("vb", vertex_patches.at(1))
        anchor("vc", vertex_patches.at(2))
        anchor("fa", facet_patches.at(0))
        anchor("fb", facet_patches.at(1))
        anchor("fc", facet_patches.at(2))

        line(a, b, c, close: true, stroke: (thickness: .01, paint: blue))
        round_it(points: (a, b, c), radius: shell_radius, close: true, stroke: (
            dash: "densely-dotted",
            thickness: .01,
            paint: blue,
        ))
    })

    rotate(z: 90deg)
    round_tetrahedron(name: "left")
    rotate(z: -90deg)
    line((-3, 2), (2, 2), stroke: (thickness: .01, dash: "densely-dashed", paint: yellow), name: "top")
    line(
        (-2.5, -scale_factor * edge_length * calc.sqrt(3) / 6),
        (2, -scale_factor * edge_length * calc.sqrt(3) / 6),
        stroke: (thickness: .01, dash: "densely-dotted"),
        name: "height",
    )
    line(
        (-3, -edge_length * calc.sqrt(3) / 6 - shell_radius),
        (2, -edge_length * calc.sqrt(3) / 6 - shell_radius),
        stroke: (thickness: .01, dash: "densely-dashed"),
        name: "bottom",
    )
    content((to: "bottom.start", rel: (-0.5, -0.0)), text(9pt)[LJ wall])
    content((to: "top.start", rel: (-0.9, -0.0)), text(9pt)[Yukawa wall])
})
