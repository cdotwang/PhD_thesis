= Mismatch Induce Structural Diversity and Chirality in Tetrahedra and Octahedra Space-Filling Systems

The rational organization of distinct components into well-defined structures remains a fundamental  challenge, as it requires a delicate balance between chemical, physical and structural interactions. One strategy to achieving such organization is to employ shape-complementary building blocks, such as those used  in space-filling systems. While effective, these systems often suffer from limited tunability in dimensions, symmetry, and stoichiometry because of their inherently high symmetry and fixed composition. Overcoming this limitation calls for design strategies that expand tunability and functionality, while still preserving the rational organization of multiple components. In this work, we introduce a design principle that enhances the  tunability of space-filling systems by introducing  specific mismatches in particle size and number ratios. This strategy  promotes chiral symmetry breaking, enables control over vacancies, and broadens structural diversity. We show that high-symmetry  honeycomb structures of tetrahedra and octahedra can spontaneously transition into low-symmetry chiral superlattices---both with and without a substrate---via a rotational phase transition. This phenomenon is supported by geometrical calculations and Monte Carlo simulations. Furthermore, the number ratio in these systems can be adjusted to create well-ordered voids in the presence of a substrate, introducing an additional level of periodicity that is unattainable in conventional systems. By introducing controlled mismatches into  co-crystallizing systems, we successfully generated nine different superstructures, demonstrating the effectiveness of this strategy in achieving diverse and interesting superstructures. This work highlights the potential of our approach for overcoming the limitations of space-filling systems and unlocking new possibilities for functional materials.

#pagebreak()

== Introduction

The rational organization of diverse components into a cohesive system enables the emergence of complex  properties that are unattainable by individual components alone. This principle has fueled many recent advances in the design of new materials and devices with emergent functionalities, particularly at the nanoscale. A prominent example is the integration of two-dimensional (2D) materials into heterostructures through layer-by-layer stacking, which yields unique optical, photonic, and electronic properties, and positions them as next-generation metamaterials. However, this approach is typically labor-intensive, with low efficiency and reproducibility, making it unsuitable for large-scale production. By contrast, self-assembly---a spontaneous process driven by a variety of interactions---offers a highly tunable and efficient alternative for organizing nanoscale building blocks such as nanoparticles.

Self-assembly, driven by diverse interactions, offers exceptional tunability in controlling symmetry, size and shape. Such structures emerge from a careful balance of chemical, physical, and structural interactions tailored to meet specific functional requirements. However, the self-assembly of multiple nanoparticles---or co-crystallization---remains a significant challenge due to its inherent complexity. Multi-component systems often favor phase separation or alloyed structures, which lack the ordered crystalline arrangement of distinct species. While some co-crystallized superlattices have been realized by maximizing packing density or exploiting surface ligand complementarity (e.g., electrostatics or DNA hybridization), these approaches are generally limited to simple building blocks and high-symmetry lattices. This underscores the need for innovative strategies to expand the structural and functional diversity of multi-component assemblies.

An alternative strategy for organizing multiple components is through space-filling systems, where two or more shape-complementary anisotropic building blocks assemble in specific stoichiometric ratios. This approach provides a straightforward route to periodic superlattices: by fully occupying space, these systems achieve achieving 100% packing density and reach their most thermodynamically stable state. In principle, this approach enables the self-organization of multiple building blocks with minimal energy barriers. However,  the resulting structures are typically high-symmetry and three-dimensional, offering limited tunability in symmetry and dimensionality. Consequently, despite extensive mathematical and theoretical studies, only a few space-filling systems have been realized experimentally, with even fewer studies probing their unique properties.

Space-filling systems, which rely on perfect matching in size and number ratios, can be regarded as special cases of co-crystallization. Yet in nature, imperfections and mismatches are ubiquitous, often leading to unexpected outcomes. Sometimes these imperfections are detrimental, but in other cases they unlock novel  phenomena: mismatched base pairs in DNA can introduce mutations that drive diversity but also cause disease, while slight misalignments between graphene sheets yield "magic-angle" superlattices that exhibit  unconventional superconductivity. By analogy, mismatches in space-filling systems may also give rise to  intriguing behaviors. Yet, despite this potential, theoretical studies have largely ignored mismatches, often  due to a perceived lack of interest. Experimentally, introducing mismatches in space-filling systems is highly  challenging, as most self-assembly systems, particularly those involving DNA, tend to accommodate rather than preserve mismatches.


In this work, we demonstrated that the high-symmetry space-filling honeycomb structure of tetrahedra (Th) and octahedra (Oh) (Th-Oh honeycomb) can be tuned to achieve reductions in both symmetry and dimensionality by  introducing a controlled degree of mismatch during co-crystallization. Leveraging depletion-driven self-assembly with short-range interactions and precise nanocrystal synthesis, we successfully realized chiral superlattices both in the presence and absence  of a substrate. Monte Carlo (MC) simulations reveal that a rotational phase transition is the key mechanism driving chiral symmetry breaking, facilitated  by the  increased  packing density between mismatched tetrahedra and octahedra.

We further extend the complexity of the tetrahedra-octahedra honeycomb structure by introducing a mismatch in the number ratio, enabling the formation of ordered vacancies within the existing 2D lattice. Through combined experimental and computational studies, we construct the full state diagram of the tetrahedra-octahedra co-crystallization system, highlighting its remarkable tunability in controlling both the symmetry reduction  and chirality. Beyond 2D superlattices, we examine symmetry-breaking behaviors in conventional self-assembly systems in solution, observing both achiral and chiral single crystals with homochirality within individual crystals, demonstrating significant potential for future applications. Interestingly, we also observe heterogeneous epitaxial growth of octahedral superlattices on tetrahedral superlattices, further emphasizing the potential of introducing mismatches in space-filling systems to unlock emergent structural and functional properties.





// - Self-assembly of colloidal nanocrystals (NCs) into superlattices provides a programmable approach to developing metamaterials with tailored optical, electronic, and catalytic properties.
// - Advancements in the synthesis of faceted nanoparticles and colloids have spurred interest in the phase behavior of polyhedral shapes. Regular tetrahedra have attracted particular attention because they prefer local symmetries that are incompatible with periodicity.

== Results and Discussion
=== Experimental System of Tetrahedra and Octahedra
The co-crystallization of  Th and Oh nanoparticles (NPs) requires precise control over the size and shape uniformity of the building blocks. Using seed-mediated synthesis with optimized seed quality, we successfully produced Th NPs with sharp tips and well-defined edge lengths ($L$) and Oh NPs with varying  edge lengths ($D$) (Figure 1a), achieving high purity and uniformity (see SI for further details on the synthesis, Figures S1, S2). This approach allows continuous tuning of the  size ratio ($L$/$D$) or mismatch degree (Figure 1b), providing a robust platform for tailoring size and shape complementarity. Additionally, the number ratio between Th and Oh NPs ($N_"Th"$/$N_"Oh"$) can be precisely controlled by adjusting the number of seeds during synthesis.

Similar to our previous work, 2D superlattices were formed by suspending Th and Oh NPs with $N_"Th"$/$N_"Oh" = 2$ in a cetyltrimethylammonium chloride (CTAC) surfactant solution and drop-casting specific volumes onto  silicon substrates to allow slow evaporation (Figure S3). This substrate-mediated self-assembly approach offers several distinct advantages. First, using native CTAC-terminated building blocks avoids the need for ligand exchange or functionalization, reducing the difficulties associated with designing, synthesizing surface ligands, and investigating possible functionalization methods. Second, the CTAC-mediated self-assembly system leverages short-chain ligands and short-range interactions, such as van der Waals, electrostatics and depletion potentials,  as confirmed by DLVO calculations---preventing particle shape rounding and maintaining anisotropy and size mismatches that are challenging to preserve with long DNA or polymer chains. This design ensures that the effects of anisotropy and mismatch remain central to our study. Third, during solvent evaporation, interparticle interactions gradually increase over time (Figure 1c), facilitating  rotational phase transitions and symmetry-breaking behaviors, as observed in the formation of pure tetrahedral  superlattices.

The introduction of silicon substrates or  particle-substrate interactions enables templated growth of 2D superlattices with a single unit-cell thickness. This process alters the growth direction, exposing the  characteristic {111} facets of Th-Oh honeycomb lattice and producing twisted interparticle configurations and varying degrees of symmetry breaking. Finally, the 2D superlattices formed on  substrates can be further engineered or directly employed in applications such as surface-enhanced Raman spectroscopy (SERS).

=== Chiral Symmetry-Breaking via Size Ratio Mismatch
Based on our hypothesis and geometrical calculations of the potential overlap area between Th and Oh NPs (see SI for a detailed calculation), we conjecture that spontaneous symmetry breaking  in the Th-Oh honeycomb system can occur during co-crystallization when a certain degree of size mismatch is introduced. Specifically, this behavior arises when the size ratio $L$/$D$ ranges from 1 to 1.5, with a Th to Oh particle number ratio $N_"Td"$/$N_"Oh" = 2$  (Figure 1d). The symmetry-breaking process is driven by the formation of achiral intermediate superlattices, which are initially stabilized by short-range substrate interactions, which gradually evolve into thermodynamically favored chiral structures with higher packing densities (See supplementary movie S1).

To test this hypothesis, we conducted a series of synthesis and self-assembly experiments. As anticipated, when the  size ratio is matched ($L$/$D$ = $1$), Th and Oh NPs  form highly ordered, periodic superlattices on substrates such as silicon wafers and carbon-coated TEM grids. In contrast, introducing  a specific size mismatch ($L$/$D$ $approx 1.2$) induces chiral symmetry breaking, resulting in the formation of chiral superlattices (Figure 1d). Interestingly, in both cases, the octahedral building blocks maximize their overlap with surrounding tetrahedra and become  encapsulated within hexagonal cages formed by the tetrahedra, effectively creating a host-guest system.

It is important to note that the rotational direction of the lattice can be either clockwise (CW) or counterclockwise (CCW), yielding superlattices composed of   mixed  left- and right-handed domains. Fortunately,  these 2D superlattices can grow to domain sizes as large as 10 \mum, sufficient for investigating  their properties at the single-domain level. It is also important to note that although these substrate-bound 2D superlattices exhibit  planar rather than true 3D  chirality, they still display left- and right-handedness properties  upon flipping orientation, enhancing their potential for applications.


Experimental findings
Our collaborators synthesize gold tetrahedra and octahedra in the experiments. By varying the edge length of the octahedra, different size ratios (L/D) are obtained, as shown in @fig:model. The tetrahedral and octahedral nanoparticles with specific size ratios and number ratios are dispersed in a cetyltrimethylammonium chloride (CTAC) solution. CTAC adsorbs on the nanoparticle surface and mediates short-range interactions (van der Waals, electrostatic, and depletion forces), as proven by the Derjaguin-Landau-Verwey-Overbeek (DLVO) calculations, which helps preserve the particle anisotropy and mismatch features. To investigate their behavior on planar substrates, the solution is drop-cast on silicon wafers and carbon film on TEM grid, and slow evaporation leads to the formation of 2D superlattices, as shown in @fig:superlattices.
#figure(
    image("model.png", width: 90%),
    caption: [Schematic illustration of the tetrahedra and octahedra mixture system. (a) and (b) the size ratio (L/D) is defined as the edge length of tetrahedra (L) divided by that of octahedra. The number ratio is defined as the number of tetrahedra ($N_t$) divided by that of octahedra ($N_o$). (c) A schematic of interactions in the mixture system. The CTAC micelles (yellow) induce depletion attractions between the nanoparticles (blue for tetrahedra and yellow for octahedra). The electrostatic repulsions between the positively charged CTAC bi-layers on the nanoparticle surfaces prevent aggregation.],
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

In short, the height of the simulation slab varies with the size ratio. We fix the edge length of the octahedron to 1, and then gradually compressed the x-y plane with volume moves for the NpT simulation. Each pressure stage was run for $2 times 10^6$ steps. The reduced pressure $p^*$ is defined as: $ p^* = beta p a_"o"^3 $ where $a_"o"$ is the edge length of octahedron. The reduced pressure is then increased by 0.1 until the packing fraction converged. The packing fraction $eta$ is defined as: $ eta = V_"total" / V_"slab" $ We perform quasi-2D simulations for the size ratio from 0.70 to 1.70 and plotted the phase diagram. In this work, we fix the number ratio to *2:1*.

=== Anisotropic patchy particle model
Given the limits of interpreting the enthalpy effects by conventional HPMC simulations, we perform MD simulations to study the phase behavior which can not be explored by Monte Carlo. One challenge of simulating anisotropic particles in MD simulations is to introduce appropriate spatial exclusion for anisotropic particles, namely, to give the particles a shape. Conventionally, atoms are typically represented as points or spheres in MD simulations. More complex geometries are generally modeled by combining multiple atoms, a strategy similar to that employed in the discrete element method (DEM). However, this approach will be computationally expensive.

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
    caption: [A schematic of the interaction model in hard tetrahedron and octahedron. The vertex patches (green) and facet patches (red) are obtained by uniform scaling the vertices and centroids of the faces of the polyhedrons by a scale factor less than 1.],
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
            table.cell(rowspan: 3, [Th-Th]),
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
            table.cell(rowspan: 4, [Th-Oh]),
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
            table.cell(rowspan: 3, [Oh-Oh]),
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
    caption: [2D schematic representation of the interaction model between patches of tetrahedra. Here, tetrahedra are represented with regular triangles for simplicity. For other pairs, Th-Oh and Oh-Oh are similar. There are three types of pair interactions between the patches: vertex-vertex, vertex-facet, and facet-facet. The interaction strength is set to be the same for all three types of interactions.],
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
Unlike in quasi-2D systems where entropy is the main driving force, crystallization in bulk systems is driven by enthalpy in a dilute system. When the strength of depletion is sufficiently enhanced, we observed that Th and Oh NPs co-crystallize into a honeycomb structure when $epsilon_g = 1.8$.

#figure(
    grid(
        columns: 2,
        gutter: 1pt,
        image("3d_1.0_local.png", width: 90%), image("3d_1.2_local.png", width: 90%),
    ),
    caption: [Snapshots of the achiral and chiral structures formed by Th and Oh NPs at size ratio of 1.0 (left) and 1.2 (right). Both images highlight a local view of the honeycomb arrangement.],
) <fig:honeycomb_3d>

#place.flush()

== Conclusions & Outlook
In this chapter, we employ quasi-two-dimensional Monte Carlo simulations and molecular dynamics simulations to investigate the phase behavior of tetrahedra and octahedra at different size ratios. We find that when the size ratio is between 0.85 and 1, tetrahedra and octahedra form achiral honeycomb structures. When the size ratio is between 1 and 1.4, the system undergoes a rotational phase transition, leading to the formation of chiral honeycomb structures. For size ratios smaller than 0.85 or larger than 1.4, phase separation occurs, with tetrahedra and octahedra forming their respective lattice structures. We also study the pure tetrahedra system and observe that they form hexagonal diamond superlattices. Finally, we explore the formation of superlattices in three-dimensional systems and find that octahedra effectively occupy the voids between tetrahedra, resulting in more compact and stable structures. These findings not only enrich our understanding of the self-assembly behavior of shape-complementary building blocks in multicomponent systems but also provide theoretical guidance for the design of novel materials.
