#import "@preview/cheq:0.2.3": checklist
#show: checklist.with(fill: luma(95%), stroke: blue, radius: .2em)
// footer setup
// #set page(footer: context {
//     let page_number = counter(page).get().first()
//     let is_start_chapter = query(heading.where(level: 1, outlined: true))
//         .map(it => counter(page).at(it.location()).first())
//         .contains(page_number)

//     // skip the first page of each chapter and empty pages
//     if not is_start_chapter and state("content.switch", false).get() {
//         if calc.even(page_number) {
//             rotate((page_number - 2) * -5deg, polygon.regular(
//                 fill: blue.lighten(80%),
//                 stroke: blue,
//                 size: 30pt,
//                 vertices: 3,
//             ))
//         }
//     }
// })

// #set page(background: rotate(-24deg,
//   text(28pt, fill: rgb("FFCBC4"))[
//     *CONFIDENTIAL*
//   ]
// ))

= Co-crystallization of Tetrahedra and Octahedra

// Tetrahedron and octahedron are two of the simplest polyhedra. They are the building blocks of many complex structures, such as the diamond lattice and the perovskite structure. In this chapter, we will study the phase behavior of these two polyhedra in a quasi-2D and a bulk-3D system. We will compare the results of the two systems with experimental results and discuss the implications for the phase behavior of more complex structures.

The rational organization of different components into a well-defined system is challenging because it requires a careful balance of chemical, physical and/or structural interactions between them. One way to achieve the organization of different components is to find the shape- complementary building blocks, like the space filling systems. However, space filling systems usually result in limited tunability in dimension, symmetry and stoichiometry because of their intrinsic high symmetry nature and well-defined stoichiometric ratio. Therefore, how to improve the tunability and potential applications while maintaining the rational organization of two different components is the key to avoiding the dilemma of this system. To this end, in this work, we demonstrated one design rule to achieve the high tunability of space filling system including symmetry-breaking by introduction of specific size and number ratio mismatches. Our results show that the high-symmetric tetrahedra and octahedra honeycomb can spontaneously form low-symmetric chiral superlattices in both presence and absence of substrate through rotation phase transition, evident both by mathematic calculation and hard particle Monte Carlo (HPMC) simulations. In addition, the number ratio of space filling system can be further tuned and then achieve the well-ordered voids with the presence of substrate, forming another level of periodicity that cannot be achieved in the other systems. By introducing specific amount of mismatch in co-crystallization system, we achieved 9 different superstructures, demonstrating the advantages of this strategy in achieving interesting superstructures.

#pagebreak()

== Introduction

The rational organization of diverse components into a cohesive system facilitates the emergence of complex and unique properties that individual components cannot achieve alone. This concept has driven recent research into developing new materials and devices with emergent properties, particularly at the nanoscale. For instance, integrating two-dimensional (2D) materials into heterostructures through layer-bylayer stacking can yield unique optical, photonic, and electronic properties, serving as next-generation metamaterials. However, this process is usually labor-intensive, resulting in low efficiency and reproducibility, limiting its application to laboratory-scale production. In contrast, self-assembly—a spontaneous process driven by various interactions offers a promising alternative for organizing nanoscale objects (_e.g._, nanoparticles) with high tunability. Leveraging diverse interactions, self-assembly offers exceptional tunability in controlling symmetry, size and shape. These structures are achieved by balancing chemical, physical, and structural interactions to meet specific functional requirements. Nonetheless, the self-assembly of multiple nanoparticles or co-crystallization remains a significant challenge due to the inherent complexity and the underlying science. Multi-component systems often favor phase separation or alloyed structures, which lack the regular crystalline arrangement of both distinct species. While some co-crystallized superlattices have been achieved by maximizing the packing density of building blocks or using chemical complementarity of the surface ligand (_e.g._, electrostatics, DNA hybridization), they are typically limited to relatively simple building blocks and lattice symmetry, underscoring the need for further innovation in this field.

Alternatively, space filling systems with two or more different shape-complementary anisotropic building blocks with specific stoichiometric ratio are regarded as the straightforward way to achieve the organization of different building blocks into ordered and periodic superlattices. The space filling systems make full use of the space and achieve the highest packing density of 100%, and thus achieve the most thermodynamic state. Therefore, in theory, by spacing filling, the self-organization of two or more different building blocks will be feasible without high energy barrier to form organized superlattices. However, because of this nature, the obtained superlattices are always in high symmetry and 3D form, resulting in less tunability in symmetry and dimensionality. Therefore, even though with extensive investigation on mathematical and theoretical studies, only limited space filling systems have been reported and not to mention the unique properties achieved by space filling systems.

As a system requires perfect matching in size and number ratio, space-filling systems can be treated the special case in co-crystallization of different building blocks. However, the world is never in perfect form with lots of imperfections and mismatches existed. These mismatches in a system most of the time can cause catastrophic effects while sometimes can result in interesting phenomena. For example, the mismatched pairing between DNA double helix can lead to a permanent mutation after subsequent rounds of DNA replication, which is a key driving force of genetic diversity but can also cause diseases such as cancer. Similarly, the misalignment of two graphene sheets can form magic-angle graphene superlattices at twist angle of about 1.1#sym.degree, which demonstrate unconventional superconductivity. Therefore, it will be also promising to examine the effects of mismatch on space filling systems. However, this part is always ignored in theory due to the lack of interest. And in experiments, how to introduce mismatch in a space filling system is extremely difficult since most of the self-assembly systems with relatively flexible interactions can accommodate mismatch easily, especially for DNA-based self-assembly.

In this work, we demonstrated that the high-symmetric space filling system—tetrahedra (Td) and octahedra (Oh) honeycomb (Td-Oh honeycomb)—can be further tuned to achieve both symmetry and dimensionality reductions through introducing a specific amount of mismatch during co-crystallization. By taking advantage of depletion-driven self-assembly with short range interaction and precise nanocrystal syntheses, we are able to achieve chiral superlattices in both presence and absence of substrate. Hard Particle Monte Carlo (HPMD) simulations suggested that rotation phase transition is the key mechanism to achieve the symmetry-breaking behavior by increasing the packing density between mismatched tetrahedra and octahedra. We further achieve the ordered vacancy on the existing 2D lattice by introducing number ratio mismatch, further increasing the complexity of tetrahedra and octahedra honeycomb system. Based on our calculation and experiment, the completed phase diagram of tetrahedra and octahedra cocrystallization system is obtained, further showing the great tunability in controlling symmetry reduction degree and chirality. Apart from 2D superlattices, we further examine symmetry-breaking behaviors in conventional self-assembly systems in solution and both achiral and chiral single crystals are observed with homochirality in individual crystal, showing great potential in future applications. Interestingly, we also observed the formation of heterogeneous epitaxial growth of octahedra superlattices on tetrahedra superlattices, further showing the great potential in introducing mismatch in space-filling systems to achieve emergent properties.

// - Self-assembly of colloidal nanocrystals (NCs) into superlattices provides a programmable approach to developing metamaterials with tailored optical, electronic, and catalytic properties.
// - Advancements in the synthesis of faceted nanoparticles and colloids have spurred interest in the phase behavior of polyhedral shapes. Regular tetrahedra have attracted particular attention because they prefer local symmetries that are incompatible with periodicity.

== Experimental findings
Our collaborators synthesize gold tetrahedra and octahedra in the experiments. By varying the edge length of the octahedra, different size ratios (L/D) are obtained, as shown in @fig:model. The tetrahedral and octahedral nanoparticles with specific size ratios and number ratios are dispersed in a cetyltrimethylammonium chloride (CTAC) solution. CTAC adsorbs on the nanoparticle surface and mediates short-range interactions (van der Waals, electrostatic, and depletion forces), as proven by the Derjaguin-Landau-Verwey-Overbeek (DLVO) calculations, which helps preserve the particle anisotropy and mismatch features. To investigate their behavior on planar substrates, the solution is drop-cast on silicon wafers and carbon film on TEM grid, and slow evaporation leads to the formation of 2D superlattices, as shown in @fig:superlattices.
#figure(
    image("model.png", width: 90%),
    caption: [Schematic illustration of the tetrahedra and octahedra mixture system. (a) and (b) the size ratio (L/D) is defined as the edge length of tetrahedra (L) divided by that of octahedra. The number ratio is defined as the number of tetrahedra ($N_t$) divided by that of octahedra ($N_o$). (c) A skematic of interactions in the mixture system. The CTAC micelles (yellow) induce depletion attractions between the nanoparticles (blue for tetrahedra and yellow for octahedra). The electrostatic repulsions between the positively charged CTAC bi-layers on the nanoparticle surfaces prevent aggregation.],
) <fig:model>

#figure(
    grid(
        columns: 2,
        gutter: 2pt,
        image("co_0.6.png", width: 90%), image("co_1.0.png", width: 90%),
        image("co_1.2.png", width: 90%), image("co_1.8.png", width: 90%),
    ),
    caption: [Phase behaviors in experiments at different size ratios of tetrahedra and octahedra when number ratio is fixed to 2:1. Scale bars are 100 nm. The top views are EM images and bottom views are the modeling diagrams, where tetrahedra are in blue and octahedra are in yellow.],
) <fig:superlattices>
The experimental results show that this binary mixture exhibits both phase separation and co-crystallization at different size ratios. In the case of phase separation, the octahedra assemble into a simple hexagonal lattice, while the tetrahedra form a special hexagonal diamond crystal. More interestingly, at certain specific size ratios, for example at 1.2, the co-assembled honeycomb structures display chirality. The rotation angle, which quantifies the degree of chirality, also depends on the size ratio. Next, we use simulations to investigate the mechanisms underlying the formation of these structures.

#place.flush()

== Model & Methods
=== Quasi-2D HPMC simulations
To study the phase behavior of tetrahedra and octahedra in a quasi-2D system, quasi-2D simulations that are consistent with the experiments are performed. We put 400 tetrahedra and 200 octahedra in a slab. The top and bottom of the slab are modeled by a hard wall that does not allow the particles' vertex to penetrate. The height of the slab is fixed during simulations, ensuring the system remains confined to a thin film. To ensure that the tetrahedra and octahedra form a one-layer structure, we set the height of the box 10% larger than the maximum rotational height of tetrahedra and octahedra, as follows: $ h_"slab" = 1.1 dot.c max{h_"t", h_"o"}, $ where $h_"o"$ and $h_"t"$ are the rotational height of tetrahedra and octahedra, respectively.

- For tetrahedra, the height of a triangle on the tetrahedron's surface with edge length $a$, denoted as $h_"t"$, is defined: $ h_"t" = sqrt(3) / 2 a. $ This allows tetrahedra to rotate freely.
- For octahedra, since we let all octahedra lie flat and one of the surfaces is in contact with the base. Therefore, $h_"o"$ is defined as the diameter of the inscribed sphere of the octahedron with edge length $a$. Then $ h_"o" = sqrt(6) / 3 a. $

In short, the height of the simulation slab varies with the size ratio. We fix the edge length of the octahedron to 1, and then gradually compressed the x-y plane with volume moves for the NpT simulation. Each pressure stage was run for $2 times 10^6$ steps. The reduced pressure $p^*$ is defined as: $ p^* = beta p a_"o"^3 $ where $a_"o"$ is the edge length of octahedron. The reduced pressure is then increased by 0.1 until the packing fraction converged. The packing fraction $eta$ is defined as: $ eta = V_"total" / V_"slab" $ We performe quasi-2D simulations for the size ratio from 0.70 to 1.70 and plotted the phase diagram. In this work, we fix the number ratio to *2:1*.

=== Anisotropic patchy particle model
Given the limits of interpreting the enthalpy effects by conventional HPMC simulations, we perform MD simulations to study the phase behavior which can not be explored by Monte Carlo. One chalenge of simulating anisotropic particles in MD simulations is to introduce appropriate spatial exclusion for anisotropic particles, namely, to give the particles a shape. Conventionally, atoms are typically represented as points or spheres in MD simulations. More complex geometries are generally modeled by combining multiple atoms, a strategy similar to that employed in the discrete element method (DEM). However, this approach will be computationally expensive.

To model hard tetrahedra and octahedra, we apply the aWCA (anisotropic Weeks-Chandler-Anderson) interaction on these two shapes. aWCA computes the Lennard-Jones force between anisotropic particles as described in Ref @ramasubramani2020mean, as follows:
$
    U(r, r_c) = U_0 (r) + U_c (r_c) .
$
The first term of RHS is the central interaction $U_0$, the standard center-center interaction between two particles with center-center distance $r$. The second term is the contact interaction $U_c$, computed from the smallest distance between the surfaces of the two particles $r_c$. The central and contact interactions are defined as follows:
$
    U_0 (r) = 4 epsilon (epsilon_c) [(sigma/r)^12 -(sigma/r)^6 ] , \
    U_c (r_c) = 4 epsilon_c [(sigma_c /r_c)^12 -(sigma_c /r_c)^6 ] ,
$
where $epsilon_c$ determines the strength of both the central and contact interactions, and $epsilon$ is an energy coefficient proportional to $epsilon_c$, ensuring that $U_0$ maintains the anisotropic core shape. The interaction distance of the central term, $sigma$, is calculated as the average of $sigma_i$ and $sigma_j$. Additionally, ALJ computes the contact interaction distance $sigma_c$ using the contact ratios $beta_i$ and $beta_j$ as follows:
$
    sigma_c = (sigma_(c i) + sigma_(c j)) / 2 , \
    sigma_(c i) = beta_i dot.op sigma_i , \
    sigma_(c j) = beta_j dot.op sigma_j .
$
The total potential energy is therefore the sum of two interactions, a central Lennard-Jones potential and a radially-shifted Lennard-Jones potential where the shift is anisotropic and depends on the extent of the shape in each direction. In brief, the mechanisem is to introduce an extra orientation-dependent LJ potential to surfaces on polyhedrons. It is a mean-field method that depends on the distance between surfaces. When the distance between two surfaces from different particles is two short, then there will be a strong repulsive force to keep two particles from overlaping.
#figure(
    image("patches.pdf", width: 90%),
    caption: [A skematic of the interaction model in hard tetrahedron and octahedron. The vertex patches (green) and facet patches (red) are obtained by uniform scaling the vertices and centroids of the faces of the polyhedrons by a scale factor less than 1.],
) <fig:patches>
To replicate the depletion effect in experiments, a set of interactive patches is introduced within the tetrahedra and octahedra. These patches correspond to the rescaled vertices and centroids of the polyhedron faces, as described in @fig:patches. The interaction between patches is governed by a short-range attractive potential, modeled using an _expanded Gaussian_ potential, defined as:
$
    U(r) = epsilon exp[-1 / 2 ((r - Delta) / sigma)^2],
$
where $epsilon$ is the strength of the interaction, $Delta$ is the distance between two patches, and $sigma$ is the width of the gaussian potential. In our model, we set different values of $Delta$ for different types of patches as shown in @fig:interaction. The interaction is designed to be attractive only when the two particles are close enough. In this way, we can simulate the hard tetrahedra and octahedra with depletion interactions in MD simulations.
#figure(
    grid(
        columns: 2,
        image("interaction.pdf", width: 70%), image("interaction_plot.pdf"),
        grid.cell(colspan: 2, table(
            columns: 11,
            table.header(table.cell(colspan: 6, [aWCA]), table.cell(colspan: 5, [expanded-gaussian])),
            [],
            [$epsilon_"c"$],
            [$sigma_"0"$],
            [$r_"0 cut"$],
            [$sigma_"c"$],
            [$r_"c cut"$],
            [],
            [$epsilon_"g"$],
            [$sigma_"g"$],
            [$r_0$],
            [$r_"g,cut"$],
            table.cell(rowspan: 3, [Te-Te]),
            table.cell(rowspan: 3, [1.0]),
            table.cell(rowspan: 3, []),
            table.cell(rowspan: 3, []),
            table.cell(rowspan: 3, []),
            table.cell(rowspan: 3, []),
            [vertex-vertex],
            [1],
            [2],
            [3],
            [5],
            [vertex-facet], [], [], [], [], [facet-facet], [], [], [], [],
            table.cell(rowspan: 4, [Te-Oc]),
            table.cell(rowspan: 4, [1.0]),
            table.cell(rowspan: 4, []),
            table.cell(rowspan: 4, []),
            table.cell(rowspan: 4, []),
            table.cell(rowspan: 4, []),
            [vertex-vertex],
            [1],
            [2],
            [3],
            [5],
            [vertex(Te)-facet(Oc)],
            [],
            [],
            [],
            [],
            [vertex(Oc)-facet(Te)],
            [],
            [],
            [],
            [],
            [facet-facet],
            [],
            [],
            [],
            [],
            table.cell(rowspan: 3, [Oc-Oc]),
            table.cell(rowspan: 3, [1.0]),
            table.cell(rowspan: 3, []),
            table.cell(rowspan: 3, []),
            table.cell(rowspan: 3, []),
            table.cell(rowspan: 3, []),
            [vertex-vertex],
            [1],
            [2],
            [3],
            [5],
            [vertex-facet], [], [], [], [], [facet-facet], [], [], [], [],
        )),
    ),
    caption: [2D schematic representation of the interaction model between patches. Here, tetrahedra are represented with regular triangles for simplicity. There are three types of pair interactions between the patches: vertex-vertex, vertex-facet, and facet-facet. The interaction strength is set to be the same for all three types of interactions.],
) <fig:interaction>

To simulate a two-dimensional environment of particles on a substrate, we add an additional Lennard-Jones (LJ) wall at the bottom of the simulation box. The purpose of this wall is to keep the nanoparticles parallel to the substrate when in contact, thereby mimicking the behavior of lying on the substrate. At the top of the box, we apply a Yukawa repulsive potential, $ U(r) = epsilon exp(-kappa r)/r , $ where $epsilon$ is the strength of the potential and $kappa$ is the inverse screening length, to represent the solution-air interface, which continuously compresses the system during evaporation. The specific setup is shown in @fig:walls. Both the bottom LJ potential and the top Yukawa potential prevent the particles from penetrating the boundaries, creating an effective confined boundary condition. We then keep the height in the z-direction constant and gradually increase the packing fraction by 0.01, followed by relaxation for one million steps, in order to compress the x-y plane and mimic the evaporation process.

#figure(
    image("walls.pdf", width: 80%),
    caption: [Schematic representation of the quasi-2D simulation setup. The bottom LJ wall keeps the particles parallel to the substrate, while the top Yukawa wall mimics the solution-air interface. The height of the box is fixed during the simulation to ensure a quasi-2D environment.],
) <fig:walls>

#place.flush()

=== Rotation angle calculation
To measure the degree of chirality of the chiral honeycomb structures, we implement a method to calculate the rotation angle $theta$ for these structures. The rotation angle parameter is defined as the @fig:chiral_angle described. The main idea is to measure the angle between the edge vectors of the central tetrahedron and its bond vectors to neighboring tetrahedra. The arrangement of particles in simulations is not so regular as the schematic representation suggests. Therefore, we average all the angles to get a final rotation angle $theta$, as follows:
$
    theta = 1 / 6 sum_(i=1)^6 theta_i ,
$
where $theta_i$ is the angle between the edge vector of the central tetrahedron and the bond vector to its $i$-th neighboring tetrahedron. Due to the presence of defects, tetrahedra in the honeycomb structure do not always have six neighbors of tetrahedra. Therefore, we calculate the rotation angle $theta$ only for tetrahedra with six neighbors.
#figure(
    image("chiral_angle.pdf", width: 80%),
    caption: [Schematic representation of the rotation angle $theta$ in the chiral honeycomb structure. The dark blue triangles represent the central tetrahedra that are calculated for. The light blue triangles represent the neighboring tetrahedra. The rotation angle $theta$ is defined as the angle between the edge of the central tetrahedron and the edge of the neighboring tetrahedron. (a) Achiral structure. (b) Left-handed chiral structure. The cross product of edge vector and bond vector is negative. (c) Right-handed chiral structure. The cross product of edge vector and bond vector is positive. The final rotation angle $theta$ is the average of the angles between the central tetrahedron and its three neighboring tetrahedra.],
) <fig:chiral_angle>

#place.flush()

=== Bulk-3D MD simulations
We place 2731 tetrahedra and 1365 octahedra (with a number ratio of 2) in a cubic box to study their bulk phase behavior in solution. The interaction settings are similar to those in the 2D system, except that the wall interactions are removed. To accelerate nucleation events, the packing fraction, defined as $ eta = V_"total" / V_"box" , $ is increased by 0.01 every one million steps. This slow compression of the box enhances the attachment rate between particles and thereby increases the nucleation rate. Once the largest cluster size in the system exceeds 100, the compression is stopped and the simulation is switched to a conventional NVT ensemble.

== Results & Discussion
=== HPMC results?
=== Achiral honeycomb for $s_r in (0.85, 1]$
When the size ratio is exactly 1, tetrahedra and octahedra can geometrically tile the entire space without gaps in a number ratio of 2. This high degree of interlocking favors maximization of the packing fraction under high pressure. Our MD simulation results also confirm this, as shown in Figure @fig:achiral a. As the system is gradually compressed from a disordered mixture to an intermediate density, the arrangement of tetrahedra and octahedra becomes increasingly ordered with interpenetrating patterns, while the rotation angle exhibits large fluctuations. Upon further compression into a dense structure, the rotation angle gradually converges and approaches 0#sym.degree, as shown in Figure @fig:achiral b.
#figure(
    grid(
        columns: 2,
        gutter: 2pt,
        image("simu_0.9.png", width: 90%), image("simu_1.0.png", width: 90%),
    ),
    caption: [Snapshot of the achiral honeycomb structure formed by tetrahedra and octahedra at size ratio of 0.9 (left) and at size ratio of 1.0 (right).],
) <fig:achiral>
Interestingly, when the size ratio lies within the range of $(0.85, 1)$, the arrangement of tetrahedra and octahedra still maintains an achiral honeycomb structure, as shown in @fig:achiral b. Although their geometric dimensions are mismatched, this phenomenon indicates that the system possesses a certain degree of adaptability, allowing it to preserve an overall achiral character by locally adjusting the structure.

#place.flush()

=== Chiral honeycomb for $s_r in (1, 1.4)$
When the size ratio is in the range of (1, 1.4), the arrangement of tetrahedra and octahedra forms chiral honeycomb structures. This chirality arises from the size mismatch, which induces local rotations and misalignments at high packing densities, thereby giving rise to chiral features. Moreover, this symmetry breaking drives the system to collapse into either left-handed or right-handed states, or a coexistence of both.
#figure(
    image("simu_1.2.png", width: 80%),
    caption: [Snapshot of the chiral honeycomb structure formed by tetrahedra and octahedra at size ratio of 1.2. (A) Top view. (B) Side view.],
) <fig:chiral>
When the size ratio exceeds 1.4, the system exhibits phase separation, with tetrahedra and octahedra forming distinct clusters. The octahedra form a simple hexagonal lattice. This behavior is attributed to the increased size mismatch, which reduces the compatibility between the two shapes and favors segregation.

#place.flush()

=== Phase separation for $s_r < 0.85$
#figure(
    image("simu_0.7.png", width: 80%),
    caption: [(A) Snapshot of the phase separation structure formed by tetrahedra and octahedra at size ratio of 0.7.],
)
For the system with size ratio below 0.85, the tetrahedra and octahedra exhibit a strong tendency to phase separate, leading to the formation of distinct domains. This behavior is driven by the significant size mismatch, which hinders the ability of the two shapes to interlock and coexist in a stable manner.

#place.flush()

=== Pure tetrahedra
The case of pure tetrahedra is kindly differentiated from the mixed systems by its unique structural. To mimic the top wall interaction from the interface, we add extra LJ wall on both type of patches at the top of the simulation box. The wall interactions are modeled as the figure shown. Then
#figure(
    image("pure_tetra.png", width: 60%),
    caption: [Snapshot of the hexagonal diamond superlattice structure formed by pure tetrahedra.],
)
#place.flush()

=== Supraparticles in 3D

#figure(
    grid(
        columns: 2,
        gutter: 2pt,
        image("3d_1.2.png", width: 110%),
        box({
            v(2em)
            image("3d_1.2_local.png", width: 90%)
        }),
    ),
    caption: [Snapshots of the 3D chiral structure formed by tetrahedra and octahedra at size ratio of 1.2. The left image shows the overall structure, while the right image highlights a local view of the chiral arrangement.],
)
#place.flush()

== Conclusions & Outlook
In this chapter, we employ quasi-two-dimensional Monte Carlo simulations and molecular dynamics simulations to investigate the phase behavior of tetrahedra and octahedra at different size ratios. We find that when the size ratio is between 0.85 and 1, tetrahedra and octahedra form achiral honeycomb structures. When the size ratio is between 1 and 1.4, the system undergoes a rotational phase transition, leading to the formation of chiral honeycomb structures. For size ratios smaller than 0.85 or larger than 1.4, phase separation occurs, with tetrahedra and octahedra forming their respective lattice structures. We also study the pure tetrahedra system and observe that they form hexagonal diamond superlattices. Finally, we explore the formation of superlattices in three-dimensional systems and find that octahedra effectively occupy the voids between tetrahedra, resulting in more compact and stable structures. These findings not only enrich our understanding of the self-assembly behavior of shape-complementary building blocks in multicomponent systems but also provide theoretical guidance for the design of novel materials.
