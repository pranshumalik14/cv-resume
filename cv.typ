#import "@preview/fontawesome:0.5.0": *

#let date = none // or string for preset date
#set page(
  paper: "us-letter",
  margin: (top: 1.5cm, bottom: 1.5cm, left: 1.5cm, right: 1.5cm),
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
    _Naturalistic Control — in Humans, also for Robots_
  ],
  align(right)[
    #link("https://github.com/pranshumalik14")[#fa-github() pranshumalik14]
    #link("https://www.linkedin.com/in/pranshu-malik/")[#fa-linkedin() pranshu-malik] \
    #text(font: "IBM Plex Mono")[#link("mailto:pranshu.malik@malikpra.in")]
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

#section("Interests")[
  #par(justify: true)[
    Sensorimotor Neuroscience $dot$ Robotics $dot$ Internal Models $dot$ Generalizable Control $dot$ Perception $dot$ Embodied Intelligence
  ]
]

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
      par(leading: 0.4em, justify: true)[
        #text(size: 9.5pt)[
          #v(0.25em)
          #list(
            marker: [—],
            tight: true,
            spacing: 0.4em,
            ..descr,
          )
        ]
      ],
    )
  )
}

#section("Education")[
  #activity(
    "Okinawa Institute of Science and Technology",
    "Okinawa, Japan",
    "Ph.D. in Neuroscience and Robotics",
    "Jan. '25 — Present",
    (
      "Rotation project in the embodied cognitive science unit on investigating the role of noise in the emergence of structure and complex patterns in a wet artificial life setup",
      "Planned rotations with cognitive neurorobotics and neural computation research units",
      "Selected coursework: Neural Dynamics, Brain Computation, Neurorobotics, Intro. Embodied Cognitive Science",
    ),
  )
  #activity(
    "University of Western Ontario",
    "London, Canada",
    "M.Sc. in Neuroscience; cGPA: 4.0/4.0",
    "Sept. '22 — Oct. '24",
    (
      "Thesis title: The Nature of Reflexes in Online Planning and Control "
        + text(
          size: 6.5pt,
          baseline: -0.75pt,
        )[#link("https://ir.lib.uwo.ca/etd/10482/")[#fa-external-link() \[link\]]],
      "Advisors: Andrew Pruszynski, Paul Gribble",
      "Recipient of the Vector Scholarship in Artificial Intelligence ($17.5k) and the BrainsCAN Graduate Studentship ($50k)",
      "Selected coursework: Principles of Neuroscience, Reinforcement Learning",
    ),
  )
  #activity(
    "University of Toronto",
    "Toronto, Canada",
    "B.A.Sc. in Electrical Engineering; cGPA: 3.92/4.0",
    "Sept. '17 — Apr. '22",
    (
      "Engineering International Scholar: received a full tuition fee waiver for the entire duration of the program ($229k)",
      "Recipient of the Adel S. Sedra Gold Medal for achieving the highest cumulative average in the graduating class",
      "Graduated with High Honors and Minor in Robotics and Mechatronics; Dean's Honor List in all semesters",
      "Selected coursework (*graduate-level): Linear Control Systems, Signals and Systems, Fields and Waves, Digital Systems, Digital Signal Processing, Probability, *Random Processes, *Sensory Communication, System Mapping, Machine Learning, Real-time Control Systems, Robot Modeling and Control, Mechatronics, Philosophy of Religion",
    ),
  )
]

#section("Selected Research & Professional Experiences")[
  #activity(
    "Graduate Student, Western Institute for Neuroscience",
    "London, Canada",
    "Sensorimotor Superlab",
    "Sept. '22 — Oct. '24",
    (
      "Investigated the coupling between feedback and voluntary motor control by carefully estimating update times for both modalities; also tried investigating the reliance of implicit adaptation on motor variability",
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
      "Reviewed and fixed real-life behavior and performance bugs; identified, proposed, and applied planner improvements",
    ),
  )
  // #activity(
  //   "Teaching Assistant, Department of Mathematics",
  //   "Toronto, Canada",
  //   "Calculus 1 (MAT135) and Applied Linear Algebra (MAT188)",
  //   "Fall '18 & Fall '19",
  //   (
  //     "Held weekly tutorials and office hours to help students understand various concepts; used the “ask, not tell” technique",
  //     "Graded weekly assignments and midterm exams; involved in invigilation duties for quizzes, midterm, and final exams",
  //   ),
  // )
  // #activity(
  //   "Software Engineering Intern, Rocscience Inc.",
  //   "Toronto, Canada",
  //   "Geotechnical Software Tools Design",
  //   "May '19 — Aug. '19",
  //   (
  //     "Developed an interactive geometry import tool for file formats external to, and also within, the software suite",
  //     "Designed diagnostic tools to perform mesh queries and inspections to identify book-keeping and numerical errors",
  //   ),
  // )
  #activity(
    "Undergraduate Research Assistant, Motion Adaptation Science Lab",
    "Toronto, Canada",
    "Toronto Rehabilitation Institute",
    "May '18 — Aug. '18",
    (
      "Developed finite element models (FEMs) of the lower leg for the computational study of electrostimulation applications",
      "Streamlined development workflow of bio-electric FEM studies from MRI data using Inventor, Comsol, and Matlab",
    ),
  )
]

#section("Invited Talks & Posters")[
  #set enum(spacing: 1.15em, tight: true)
  // todo: awaiting typst reverse ordered list
  2. Stretch Reflexes Quickly Integrate Spatial Task Constraints During Reaching. Invited talk, Department of Cognitive and Brain Sciences, IIT Gandhinagar, 2024.
  1. Computing Error-bounded Inverse Kinematics Solutions in Fixed-time using Low-Power Analog Circuits. Podium presentation, Undergraduate Engineering Research Day, University of Toronto, 2021. #text(
          size: 6.5pt,
          baseline: -0.75pt,
        )[#link("https://docs.google.com/presentation/d/1JCgzjaANxZCT1YolAK2pu6-y0TTslsGPYoZYA25BrpY/edit?usp=sharing")[#fa-external-link() \[slides\]]]
]

#let project_descr(descr) = {
  par(leading: 0.4em, justify: true)[
    #if descr.contains(":") {
      let descr_pos = descr.position(":") + 1
      text(weight: "bold")[#descr.slice(0, descr_pos)] + text(size: 9.5pt)[#descr.slice(descr_pos, descr.len())]
    } else {
      text(size: 9.5pt)[#descr]
    }
  ]
}

// #section("Projects")[
//   #project_descr("Project Name: Long-form description.")
//   #project_descr("MotorNet-Pro: A short course project in reinforcement learning which proposes a hierarchical stochastic model-based algorithm for control of a realistic arm, subject to biomechanical complexity and uncertainty in dynamics. Its formulation aims to externalize the iterative and predictive control hierarchies that are central to sensorimotor pathways in primates, in order to form a more interpretable control policy. The Soft Actor-Critic method was used to train a baseline controller for reaching.")
//   #project_descr("Intuitive Robot Arm Reach: Undergraduate final-year project with the goal of developing a reach control method by combining algorithmic models of human motor-learning processes, such as proximodistal exploration and motor babbling. Designed and evaluated an interpolation-based method that covered the entire reachable space, contrary to tuning for specific reach targets.")
//   #project_descr("Analog IK Solver: Presents a generic computation method for inverse kinematics of serial robots using a modular and digitally reconfigurable analog circuit. Error-bounded approximate solutions are found in fixed time by continuously evaluating forward kinematics using periodic, phase-locked, and frequency-scaled waveforms of successive joint configurations.")
// ]

#section("Technical Skills")[
  #align(center)[
    Python $dot$ Julia $dot$ Matlab $dot$ C/C++ $dot$ Git $dot$ Typst $dot$ LaTeX $dot$ OpenCV
    $dot$ ROS $dot$ Graphics Design $dot$ 3D Design $dot$ Machining
  ]
]

#section("Miscellaneous")[
  #project_descr("Big Ideas Committee: Led a club that is a part of the Society for Neuroscience Graduate Students (SONGS) at Western University, which historically organized panel events focusing on broad research trends or functioned as a neuroscience journal club. In my year, we pivoted the club's focus by also including graduate students in philosophy and hosted didactic discussions as well as regular share-what-you-read sessions on topics like creativity, philosophy of science, and consciousness. We also organized a student-led panel discussion on the scientific and philosophical study of consciousness attended by 40+ graduate students and postdocs.")
  #project_descr("Hobbies and Side Interests: Photography and painting; systems thinking; citizen science; cognitive architectures; philosophy of mind, memory, and action; Indian philosophy; Sanskrit language; yoga and meditation.")
  #project_descr("Sports and Outdoor Activities: Love playing cricket and badminton, and have also played in local cricket leagues. I also enjoy running, hiking, camping, and long walks in nature.")
]
