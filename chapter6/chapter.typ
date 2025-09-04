= Egg-shaped supraparticles?

#pagebreak()

== Experimental observation
CdSe nanoparticles with a rounded tetrahedral shape form elongated, egg-shaped supraparticles shown as @egg_exp, when self-assembled via a droplet evaporation procedure as observed in experiments carried out by Da Wang et al.
#figure(
    image("egg_exp.png", width: 60%),
    placement: bottom,
    caption: [Egg-shaped supraparticles.],
) <egg_exp>
#place.flush()

== Crystal structure determination of the experimental supraparticles
To determine the crystal structure of the spherotetrahedra of the supraparticles, Robin et al. took the 3D diffraction patterns based on an electron tomography reconstruction and calculated the Inverse (Fast) Fourier Transform (IFFT) to obtain the particle positions that created it. By calculating the bond order parameters $macron(q_2)$,  $macron(q_4)$,  $macron(q_6)$,  $macron(q_8)$,  $macron(q_10)$, and $macron(q_12)$, and comparing them to the structure metrics of the hard spherotetrahedron crystals IV, V, VI, and VII, we conclude that the supraparticle crystal structure is close to structure VII, which is a nearly undeformed FCC crystal.

== Mapping the experimental particle shape to the theoretical model
Robin et al. estimated the roundness parameter $s$ of the CdSe nanoparticles by analyzing electron microscopy (EM) images. By measuring the center-to-vertex and center-to-edge distances from EM images, they obtain an effective roundness  of $s = 0.48 ± 0.10$ and $s = 0.52 ± 0.09$. *Then, in the next simulations, we use the roundness parameter $s = 0.53$ to simulate the rounded tetrahedra*.

== Size-pinning simulations and shape parameter
Here, we performed the size-pinning simulations @sharma_nucleus-size_2018 to study the seed shape when inserting a FCC seed into fluid.
$ V_t = 1 / 2 kappa ( "size"_t - "size"_"target" )^2 $
And shape parameter $kappa$:
$ kappa^2 = (3(a_x^2 + a_y^2 + a_z^2)) / (2(a_x + a_y + a_z)^2) - 1 / 2 $
Here $a_x$, $a_y$, and $a_z$ are the lengths of three semi-axes of the ellipsoid. The shape parameter is a measure of the deviation of the particle shape from a sphere. The shape parameter is 0 for a perfect sphere and 1 for a rod.

=== Measure the shape parameter from image
To identify the egg shape in the image, I use the #link("https://github.com/facebookresearch/segment-anything")[*segment anything model*] (SAM) which is trained by _META_ company. It can segment the eggs in the image, shown in the @egg_sam.
#figure(
    image("egg_sam.png", width: 64%),
    caption: [Egg-shaped supraparticles covered with masks.],
) <egg_sam>
And then I use opencv library to fit these masks by ellipse and calculate the shape parameter. The results are shown in the @egg_fit.
#figure(
    image("egg_fit.png", width: 60%),
    caption: [the first line in the annotations is the shape parameter, and the second and third lines are the length (in pixels) of major and minor axes of the ellipse separately. Here, I only calculated for those whose area is larger than 10000 (in pixels).],
) <egg_fit>
Then I got the distribution of these shape parameters, @egg_dist.
#figure(
    image("shape_dis.png", width: 80%),
    caption: [The distribution of the shape parameter.],
) <egg_dist>
// And the distribution of the shape parameters in one of simulations, @egg_dist_2.
// #figure(
//     image("shape_sim.png", width: 70%),
//     caption: [The distribution of the shape parameter.],
// ) <egg_dist_2>
We can see that the distribution of the shape parameter in the simulation is close to the experimental results.

== Results

#figure(
    grid(
        columns: 2,
        gutter: 3pt,
        image("0.63_0.0001_536.png"), image("0.63_0.0002_619.png"),
        image("0.63_0.0003_629.png"), image("0.658_0.0001_695.png"),
        image("0.658_0.0002_835.png"), image("0.658_0.0003_1000.png"),
    ),
    caption: [Results of the size-pinning simulations.],
)
