#import "template/thesis_template.typ": *


// Metadata
#let english_title = "Tetrahedral Interactions and Tetrahedral Nanoparticles"
#let dutch_title = "Tetraëdrische Interacties en Tetraëdrische Nanodeeltjes"
#let cover_info = "It is an amazing image."
#let degree = "PhD"
#let printing_time = "March 2026"
#let ISBN = "123456789"
#let DOI = "10.1234/56789"
#let printed_by = "A Printer"
#let supervisor = "Prof. dr. ir. M. Dijkstra"
#let defense_date = "maandag 25 juni 2025 des ochtends te 10.30 uur"
#let author = "Chaohong Wang"
#let author_cn = "王朝鸿"
#let author_birth = "16 juli 1996 te Poyang, China"
#let author_funding = "China Scholarship Council"
#let prologue = "Tetrahedron is all you need."
#let bib_file = "ref.bib"


#set document(title: english_title, author: author, description: "Chaohong Wang's PhD Thesis")

#let english_title = english_title.replace(" and ", "\nand\n")
#let dutch_title = dutch_title.replace(" en ", "\nen\n")

#show: thesis.with(
    english_title: english_title,
    dutch_title: dutch_title,
    cover_info: cover_info,
    degree: degree,
    printing_time: printing_time,
    ISBN: ISBN,
    DOI: DOI,
    printed_by: printed_by,
    supervisor: supervisor,
    defense_date: defense_date,
    author: author,
    author_cn: author_cn,
    author_birth: author_birth,
    author_funding: author_funding,
    prologue: prologue,
    bib_file: bib_file,
    acknowledgements: include "backmatter/acknowledgements.typ",
    publications: include "backmatter/publications.typ",
    about_author: include "backmatter/about_author.typ",
)

// Introduction
// #include "chapter1/chapter.typ"
// Zeolites
// #include "chapter2/chapter.typ"
// Rounded truncated tetrahedra
// #include "chapter3/chapter.typ"
// Tetrahedra and octahedra
#include "chapter4/chapter.typ"
// Phase diagram of Te and Oc
// #include "chapter5/chapter.typ"
// Egg-shaped supraparticles
// #include "chapter6/chapter.typ"
