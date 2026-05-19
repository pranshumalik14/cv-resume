#import "@preview/fontawesome:0.5.0": *

#let date = none // or string for preset date
#set page(
  paper: "us-letter",
  margin: (top: 1.25cm, bottom: 1.5cm, left: 1.5cm, right: 1.5cm),
  footer: context {
    let updatestr = none
    if counter(page).get().at(0) == counter(page).final().at(0) {
      let datestr = date
      if datestr == none {
        datestr = datetime.today().display("[day] [month repr:long] [year]")
      }
      updatestr = "Last updated: " + datestr
    }
    set text(size: 9pt)
    grid(
      inset: (x: 0pt, y: 0pt),
      columns: (1fr, 1fr),
      grid.cell(align: left)[
        #updatestr
      ],
      grid.cell(align: right)[
        #counter(page).display("1/1", both: true)
      ],
    )
  },
)

#grid(
  inset: (x: 0pt, y: 0pt),
  columns: (1fr, 1fr),
  align(left)[
    #text(weight: "bold", size: 18pt)[
      #link("https://pranshumalik14.github.io/")[Pranshu Malik]
    ]\
    New Delhi, India $dot$ +91-8800199424
  ],
  align(right)[
    #link("https://github.com/pranshumalik14")[#fa-github() pranshumalik14]
    #link("https://www.linkedin.com/in/pranshu-malik/")[#fa-linkedin() pranshu-malik] \
    #text(font: "IBM Plex Mono", size: 9.25pt)[#link("mailto:pranshu.malik@malikpra.in")]
  ],
)

#let section(head, body) = {
  block(breakable: false)[
    // section heading stays with the content
    #rect(width: 100%, fill: silver)[*#head*]
    #v(-1em)
    #block(width: 100%, inset: (x: 0.75em, y: 0.5em))[
      #body
    ]
    #v(-1em)
  ]
}

#let activity(title, place, subtitle, duration, descr) = {
  grid(
    row-gutter: 0.5em,
    columns: (auto, 1fr),
    rows: 3,
    [*#title*],
    grid.cell(align: right)[#place],
    [#emph(subtitle)],
    grid.cell(align: right)[#emph(duration)],
    grid.cell(
      colspan: 2,
      breakable: true,
      inset: (x: 1em, y: 0em),
      block[
        #v(0.25em)
        #set text(size: 9.5pt)
        #set par(leading: 0.4em, justify: true)
        #list(
          marker: [—],
          tight: true,
          spacing: 0.4em,
          ..descr,
        )
      ],
    )
  )
}
#section("Education")[
  #activity(
    "Okinawa Institute of Science and Technology",
    "Okinawa, Japan",
    "Ph.D. in Computational Neuroscience",
    "Jan. '25 — May '26",
    (
      "Withdrew from the program in good standing to better pursue personal research interests and career goals",
      "Selected coursework: Neuromotor Control, Nonlinear Dynamical Systems, Brain Computation, Cognitive Neurorobotics"
    ),
  )
  #activity(
    "University of Western Ontario",
    "London, Canada",
    "M.Sc. in Neuroscience; Grade: A",
    "Sept. '22 — Oct. '24",
    (
      "Thesis title: The Nature of Reflexes in Online Planning and Control "
        + text(
          size: 6.5pt,
          baseline: -0.75pt,
        )[#link("https://hdl.handle.net/20.500.14721/27839")[#fa-external-link() \[link\]]],
      "Recipient of the Vector Scholarship in Artificial Intelligence (C$17.5k) and the BrainsCAN Graduate Studentship (C$50k)",
      "Selected coursework: Principles of Neuroscience, Reinforcement Learning",
    ),
  )
  #activity(
    "University of Toronto",
    "Toronto, Canada",
    "B.A.Sc. in Electrical Engineering; cGPA: 3.92/4.0",
    "Sept. '17 — Apr. '22",
    (
      "Engineering International Scholar: received a full tuition fee waiver for the entire duration of the program (C$229k)",
      "Recipient of the Adel S. Sedra Gold Medal for achieving the highest cumulative average in the graduating class",
      "Graduated with High Honors and Minor in Robotics and Mechatronics; Dean's Honor List in all semesters",
      "Selected coursework (*graduate-level): Linear Control Systems, *Random Processes, *Sensory Communication, Analog and Digital Electronics, System Mapping, Machine Learning, Real-time Control, Robot Modeling and Control, Mechatronics",
    ),
  )
]

#section("Work Experience")[
  #activity(
    "Graduate Student, OIST Graduate University",
    "Okinawa, Japan",
    "Biological Physics Theory Unit and Information Theory, Probability, and Statistics Unit",
    "Jan. '25 — May '26",
    (
      "Focusing on understanding closed-loop neural dynamics through behaviorally informative decomposition of control",
      "Completed several mini projects on topics like adaptive output chunking in recurrent neural networks, passive-active optimal control, dynamical systems reconstruction, speed-curvature power-law, and I/O stability of plastic spiking neural networks",
    ),
  )
  #activity(
    "Graduate Student, Western Institute for Neuroscience",
    "London, Canada",
    "Sensorimotor Superlab",
    "Sept. '22 — Oct. '24",
    (
      "Investigated the coupling between feedback and voluntary motor control by carefully estimating the update times of both modalities; also tried investigating the reliance of implicit adaptation on motor variability",
      "Led multiple discussions on motor planning and control; also mentored and trained undergraduate research assistants",
    ),
  )
  #activity(
    "Navigation Engineering Intern, Zebra Technologies",
    "Mississauga, Canada",
    "Path-Planning and Control Team",
    "May '20 — Aug. '21",
    (
      "Critiqued, implemented, and tested auto-navigation algorithms from literature for deployment on inventory scanning robots",
      "Redesigned path planner to improve aisle scan coverage and efficiency by robustly handling obstructions and curved aisles",
      "Developed tools for rapidly prototyping planners and controllers and benchmarking their performance; written in Julia",
      "Reviewed and fixed real-world behavior and performance bugs; identified, proposed, and applied planner improvements",
    ),
  )
  #activity(
    "Software Engineering Intern, Rocscience Inc.",
    "Toronto, Canada",
    "Geotechnical Software Tools Design",
    "May '19 — Aug. '19",
    (
      "Developed interactive geometry import and diagnostic tools for file formats external to, and also within, the software suite",
    ),
  )
  #activity(
    "Undergraduate Research Assistant, Motion Adaptation Science Lab",
    "Toronto, Canada",
    "Toronto Rehabilitation Institute",
    "May '18 — Aug. '18",
    (
      "Created finite element models of the lower leg from MRI data for optimizing functional electro-stimulation strategies",
    ),
  )
]

#section("Technical Interests")[
  #par(justify: true)[
    Neuro-inspired Robotics $dot$ Systems ID and Integration $dot$ Generalizable Control $dot$ Perception $dot$ Embodied Intelligence
  ]
]

#section("Skills")[
  #par(justify: true)[
    Python $dot$ Julia $dot$ Matlab $dot$ C/C++ $dot$ ROS $dot$ PyTorch $dot$ OpenCV $dot$ Typst $dot$ Graphics Design $dot$ Mechatronics $dot$ Machining
  ]
]

#section("Professional Activities")[
  #par(justify: true)[
    Conference Poster (CRSy, 2025) $dot$ Invited Talk (IIT Gandhinagar, 2024) $dot$ Student Leadership & Service (throughout)
  ]
]