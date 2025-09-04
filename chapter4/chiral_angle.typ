#import "@preview/cetz:0.4.1": *

#set page(
    width: auto,
    height: auto,
    margin: 2pt,
)

#canvas(length: 1cm, {
    import draw: *
    import vector: *
    {
        polygon((0, 0), 3, angle: 90deg, name: "center", fill: blue.transparentize(10%), stroke: (
            thickness: 0.01,
            paint: blue,
        ))
        let chiral_angle = 0deg
        let distance = 1.8
        for i in range(6) {
            let angle = i * 60deg - chiral_angle
            polygon(
                (angle, distance),
                3,
                angle: 90deg,
                fill: blue.transparentize(70%),
                stroke: (thickness: 0.01, paint: blue),
                name: str(i),
            )
        }
        content((0, -2.5), text(font: "SF Pro Rounded")[Achiral])
    }
    translate(x: -3, y: -5)
    {
        polygon((0, 0), 3, angle: 90deg, name: "center", fill: blue.transparentize(10%), stroke: (
            thickness: 0.01,
            paint: blue,
        ))
        circle((0, 0), radius: 0.01, fill: orange, stroke: (paint: orange))
        let chiral_angle = 10deg
        let distance = 1.7
        for i in range(6) {
            let angle = i * 60deg - chiral_angle
            polygon(
                (angle, distance),
                3,
                angle: 90deg,
                fill: blue.transparentize(70%),
                stroke: (thickness: 0.01, paint: blue),
                name: str(i),
            )
        }
        for (i, color) in range(3).zip((blue, red, green)) {
            let thickness = 0.02
            line(
                "center",
                str(i) + ".center",
                stroke: (thickness: thickness, dash: "densely-dashed", paint: color),
                name: "bond" + str(i),
            )
            line(
                "center",
                str(i + 3) + ".center",
                stroke: (thickness: thickness, dash: "densely-dashed", paint: color),
                name: "bond" + str(i + 3),
            )
        }
        mark(
            (name: "bond0", anchor: 40%),
            "0",
            symbol: "stealth",
            fill: blue,
            stroke: (paint: blue),
            name: "bond_vector",
            scale: 0.5,
        )
        content((to: (name: "bond0", anchor: 40%), rel: (-0.1, 0.3)), text(size: 7pt)[$arrow(v)_"bond"$])
        for (i, color) in range(3).zip((blue, green, red)) {
            let thickness = 0.01
            let start_angle = 180deg + i * 120deg - chiral_angle
            arc(
                str(2 * i) + ".center",
                start: start_angle,
                delta: chiral_angle,
                radius: 1.18,
                stroke: (thickness: thickness, paint: color),
                mode: "PIE",
                name: "arc" + str(i + 1),
            )
        }
        content((to: "arc1.arc-center", rel: (-0.2, 0.02)), text(size: 7pt)[$theta_1$])
        content((to: "arc2.arc-center", rel: (0.1, -0.2)), text(size: 7pt)[$theta_2$])
        content((to: "arc3.arc-center", rel: (0.12, 0.2)), text(size: 7pt)[$theta_3$])

        for (i, color) in range(3).zip((blue, green, red)) {
            rotate(i * 120deg)
            line(
                (calc.sqrt(3) / 2, -0.5),
                (2.5, -0.5),
                stroke: (
                    thickness: 0.01,
                    paint: color,
                    dash: "densely-dashed",
                ),
                name: "edge" + str(i),
            )
            rotate(-i * 120deg) // Reset rotation
        }
        mark(
            (name: "edge0", anchor: 20%),
            (name: "edge0", anchor: 80%),
            symbol: "stealth",
            fill: blue,
            stroke: (paint: blue),
            name: "edge_vector",
            scale: 0.5,
        )
        content((to: (name: "edge0", anchor: 20%), rel: (-0.1, -0.15)), text(size: 7pt)[$arrow(v)_"edge"$])

        content((0, -2.5), [$arrow(v)_"edge" times arrow(v)_"bond" < 0$])
        content((0, -3), text(font: "SF Pro Rounded")[Left-handed Chiral])
    }

    translate(x: 6)
    {
        polygon((0, 0), 3, angle: 90deg, name: "center", fill: blue.transparentize(10%), stroke: (
            thickness: 0.01,
            paint: blue,
        ))
        circle((0, 0), radius: 0.01, fill: orange, stroke: (paint: orange))
        let chiral_angle = -10deg
        let distance = 1.7
        for i in range(6) {
            let angle = i * 60deg - chiral_angle
            polygon(
                (angle, distance),
                3,
                angle: 90deg,
                fill: blue.transparentize(70%),
                stroke: (thickness: 0.01, paint: blue),
                name: str(i),
            )
        }
        for (i, color) in range(3).zip((blue, red, green)) {
            let thickness = 0.02
            line(
                "center",
                str(i) + ".center",
                stroke: (thickness: thickness, dash: "densely-dashed", paint: color),
                name: "bond" + str(i),
            )
            line(
                "center",
                str(i + 3) + ".center",
                stroke: (thickness: thickness, dash: "densely-dashed", paint: color),
                name: "bond" + str(i + 3),
            )
        }
        mark(
            (name: "bond3", anchor: 40%),
            "3",
            symbol: "stealth",
            fill: blue,
            stroke: (paint: blue),
            name: "bond_vector",
            scale: 0.5,
        )
        content((to: (name: "bond3", anchor: 40%), rel: (0.1, 0.3)), text(size: 7pt)[$arrow(v)_"bond"$])
        for (i, color) in range(3).zip((red, blue, green)) {
            let thickness = 0.01
            let start_angle = 240deg + i * 120deg - chiral_angle
            arc(
                str(2 * i + 1) + ".center",
                start: start_angle,
                delta: chiral_angle,
                radius: 1.18,
                stroke: (thickness: thickness, paint: color),
                mode: "PIE",
                name: "arc" + str(i + 1),
            )
        }
        content((to: "arc1.arc-center", rel: (-0.1, -0.2)), text(size: 7pt)[$theta_3$])
        content((to: "arc2.arc-center", rel: (0.2, 0.02)), text(size: 7pt)[$theta_1$])
        content((to: "arc3.arc-center", rel: (-0.12, 0.2)), text(size: 7pt)[$theta_2$])

        for (i, color) in range(3).zip((blue, green, red)) {
            rotate(i * 120deg)
            line(
                (-2.5, -0.5),
                (-calc.sqrt(3) / 2, -0.5),
                stroke: (
                    thickness: 0.01,
                    paint: color,
                    dash: "densely-dashed",
                ),
                name: "edge" + str(i),
            )
            rotate(-i * 120deg) // Reset rotation
        }

        mark(
            (name: "edge0", anchor: 80%),
            (name: "edge0", anchor: 20%),
            symbol: "stealth",
            fill: blue,
            stroke: (paint: blue),
            name: "edge_vector",
            scale: 0.5,
        )
        content((to: (name: "edge0", anchor: 80%), rel: (0.1, -0.15)), text(size: 7pt)[$arrow(v)_"edge"$])
        content((0, -2.5), [$arrow(v)_"edge" times arrow(v)_"bond" > 0$])
        content((0, -3), text(font: "SF Pro Rounded")[Right-handed Chiral])
    }
})
