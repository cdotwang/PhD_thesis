= Introduction

In this chapter we introduce the concept of nucleation and hard nanoparticles. Then discuss the importance of tetrahedral interactions and tetrahedral nanoparticles in the field of nanotechnology. Finally, we will discuss the objectives of this thesis.

#v(5em)
#import "@preview/timeliney:0.3.0"
#timeliney.timeline(show-grid: true, {
    import timeliney: *

    headerline(group(([*2025*], 12)))
    headerline(group(..range(12).map(n => strong(str(n + 1)))))

    taskgroup(title: [*Chap 1*], {
        task("Introduction", (7, 9), style: (stroke: 2pt + red))
    })

    taskgroup(title: [*Chap 2*], {
        task("Zeolites", (2, 4), style: (stroke: 2pt + green))
    })

    taskgroup(title: [*Chap 3 RTT*], {
        task("Intro", (9, 10), style: (stroke: 2pt + red))
        task("Results", (8, 9), style: (stroke: 2pt + red))
    })

    taskgroup(title: [*Chap 4 Te-Oc*], {
        task("Intro", (7, 8), style: (stroke: 2pt + red))
        task("Results", (6, 7), style: (stroke: 2pt + red))
    })

    taskgroup({
        task("Revise", (9, 10), style: (stroke: 2pt + red))
    })

    milestone(at: 10, style: (stroke: (dash: "dashed", paint: blue)), align(center, text(blue)[
        *Submission Day*\
        Oct 2025
    ]))
})


#pagebreak()

== Colloidal systems

Colloidal systems are systems in which particles are dispersed in a solvent. The particles are typically in the size range of 1 nm to 1 µm. The particles can be spherical, rod-like, or even more complex in shape. The interactions between the particles can be tuned by changing the size, shape, and surface properties of the particles, _e.g._, coating by silica, DNA. This makes colloidal systems an ideal platform for studying the fundamental principles of self-assembly and phase behavior.

== Nucleation

Nucleation is the first process by which a new phase forms from a metastable state. The new phase can be a solid, liquid, or gas. It is quite common to observe nucleation in everyday life, _e.g._, the formation of ice crystals in a supercooled water droplet, the formation of bubbles in a carbonated beverage, and the formation of clouds in the atmosphere. Nucleation is a fundamental process in nature and plays a crucial role in many fields, such as material science, chemistry, and biology. The nucleation process can be divided into two stages: the formation of a critical nucleus and the growth of the nucleus. Due to the formation of the critical nucleus is the prerequisite for the nucleation process, it is often the rate-limiting step. Given the importance of nucleation in many fields, understanding the nucleation process is of great interest.


In last century, Gibbs, Volmer, and Becker have proposed the Classical Nucleation Theory (CNT) to describe the nucleation process. At the time, this concise and explanatory theory was widely accepted and used to describe the nucleation process.

The classical nucleation theory (CNT) has been widely used to describe the nucleation process. However, recent experimental and theoretical studies have shown that the nucleation process can deviate from the predictions of CNT. This has led to the development of non-classical nucleation theories.


In CNT, the free energy difference between the critical nucleus and the surrounding phase is described by the following equation:
$ Delta G = - 4 / 3 pi abs(Delta mu) rho r^3 + 4 pi gamma r^2, $
where the term $- 4 / 3 pi abs(Delta mu) rho r^3$ is the free energy cost to create the nucleus with radius of $r$, and the term $4 pi r^2$ is the free energy gain due to the surface energy of the nucleus. Here, $Delta mu$ is the chemical potential difference between the nucleus and the surrounding phase, $rho$ is the number density of the particles in the surrounding phase, and $r$ is the radius of the nucleus. The critical nucleus is formed when the free energy difference $Delta G$ is the maximum.

#figure(
    image("cnt.pdf"),
    caption: [A schematic representation of the free energy landscape of nucleation. The free energy landscape is described by the classical nucleation theory. The free energy barrier for the formation of a critical nucleus is denoted by $Delta G^*$.],
)

=== Classical nucleation theory

=== Non-classical nucleation pathways

== Simulation techniques

=== Molecular dynamics simulations

=== Monte Carlo simulations

== Hard particles

=== Hard spheres

=== Hard anisotropic particles

== Outline of this thesis
