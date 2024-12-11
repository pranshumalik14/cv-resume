#import "@preview/fontawesome:0.5.0": * 
#set page(
  paper: "us-letter",
  margin: (top: 2.5cm, bottom: 1.5cm, left: 1.5cm, right: 1.5cm),
  header: [
    #grid(
      inset: (x: 0pt, y: 0pt),
      columns: (1fr, 1fr),
      align(left)[
        #text(weight: "bold", size: 18pt)[Pranshu Malik] \
        _Naturalistic Control — in Humans, also for Robots_
      ],
      align(right)[
        #link("https://github.com/pranshumalik14")[#fa-github() pranshumalik14] 
        #link("https://www.linkedin.com/in/pranshu-malik/")[#fa-linkedin() pranshu-malik] \
        #text(font: "IBM Plex Mono")[#link("mailto:pranshu.malik@malikpra.in")]
      ]
    )
  ]
)

// set box with inset and color as section header
