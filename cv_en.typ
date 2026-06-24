#import "@preview/fontawesome:0.5.0": *

#let date = none // or string for preset date
#let show_update = true
#let show_pg_num = true
#set page(
  paper: "us-letter",
  margin: (top: 1.25cm, bottom: 1.25cm, left: 1.5cm, right: 1.5cm),
  footer: context {
    let updatestr = none
    if counter(page).get().at(0) == counter(page).final().at(0) {
      let datestr = date
      if datestr == none {
        datestr = datetime.today().display("[day] [month repr:long] [year]")
      }
      if show_update {
        updatestr = "Last updated: " + datestr
      }
    }
    set text(size: 9pt)
    grid(
      inset: (x: 0pt, y: 0pt),
      columns: (1fr, 1fr),
      grid.cell(align: left)[
        #updatestr
      ],
      grid.cell(align: right)[
        #if show_pg_num {
           counter(page).display("1/1", both: true)
        }
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
    _Reverse Engineering Motor Control in Humans, for Robots_
  ],
  align(right)[
    #link("https://github.com/pranshumalik14")[#fa-github() pranshumalik14]
    #link("https://www.linkedin.com/in/pranshu-malik/")[#fa-linkedin() pranshu-malik] \
    #text(font: "IBM Plex Mono", size: 9.25pt)[#link("mailto:pranshu.malik@malikpra.in")]
  ],
)

#let section(head, body) = {
  block(breakable: true)[
    // section heading stays with the content
    #rect(width: 100%, fill: silver)[*#head*]
    #v(-1em)
    #block(width: 100%, inset: (x: 0.75em, y: 0.5em), breakable: true)[
      #body
    ]
    #v(-1em)
  ]
}

#section("Research Interests")[
  #par(justify: true)[
    Neuro-inspired Robotics $dot$ Systems Identification and Synthesis $dot$ Generalizable Control $dot$ Dynamical Computation
  ]
]

#section("Research Overview")[
  #set par(leading: 0.4em, justify: true)
  #set text(size: 9.5pt)
  I seek principles for formulating flexible, general neural control, as in biology, to achieve intuitive dynamical control of robots. I am also broadly interested in tackling complex, multidisciplinary, real-world problems through distributed sensing, inference, and action.
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
      "Withdrew from the program in good standing to explore a better fit for personal research interests and career goals",
      "Advisors: Greg Stephens, Amedeo Roberto Esposito",
      "Selected coursework: Sensorimotor Circuits, Nonlinear Dynamical Systems, Brain Computation, Cognitive Neurorobotics"
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
      "Advisors: Andrew Pruszynski, Paul Gribble",
      "Recipient of the Vector Scholarship in Artificial Intelligence (C$17.5k) and the BrainsCAN Graduate Studentship (C$50k)",
      "Selected coursework: Principles of Neuroscience, Reinforcement Learning",
    ),
  )
  #activity(
    "University of Toronto",
    "Toronto, Canada",
    "B.A.Sc. in Electrical Engineering; cGPA: 3.92/4.0, Major cGPA: 3.99/4.0",
    "Sept. '17 — Apr. '22",
    (
      "Engineering International Scholar: received a full tuition fee waiver for the entire duration of the program (C$229k)",
      "Recipient of the Adel S. Sedra Gold Medal for achieving the highest cumulative average marks in the graduating class",
      "Graduated with High Honors and a Minor in Robotics and Mechatronics; Dean's Honor List in all semesters",
      "Selected coursework (*graduate-level): Linear Control Systems, *Random Processes, *Sensory Communication, Analog and Digital Electronics, Signal Processing, Machine Learning, System Mapping, Real-time Control, Robot Modeling and Control",
    ),
  )
]

#section("Work and Research Experience")[
  #activity(
    "Doctoral Researcher, OIST Graduate University",
    "Okinawa, Japan",
    "Biological Physics Theory Unit and Information Theory, Probability, and Statistics Unit",
    "Jan. '25 — May '26",
    (
      "Focused on understanding closed-loop neural dynamics through behaviorally informative decomposition of control",
      "Completed several mini projects on topics like adaptive output chunking in recurrent neural networks, passive-active optimal control, dynamical systems reconstruction, movement power laws, and I/O stability of plastic spiking neural networks",
    ),
  )
  #activity(
    "Graduate Researcher, Western Institute for Neuroscience",
    "London, Canada",
    "Sensorimotor Superlab",
    "Sept. '22 — Oct. '24",
    (
      "Investigated goal-dependent coupling between reflexive and voluntary motor control by estimating update times of both modalities independently during ongoing movement; also tried investigating role of motor variability in implicit adaptation",
      "Led multiple discussions on motor planning and control; also mentored and trained undergraduate research assistants",
    ),
  )
  #activity(
    "Robotics Engineering Intern, Zebra Technologies",
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
      "Created bioelectric models of lower-leg tissues from MRI data for optimizing functional electro-stimulation strategies",
      "Awarded a First-Year Engineering Summer Research Fellowship (C$7k); presented work at the IBME USRP poster day"
    ),
  )
]

#section("Talks & Posters")[
  #set enum(spacing: 1em, tight: true, reversed: true)
  #set par(justify: true, leading: 0.5em)
  #set list(marker: [-], tight: true)
  + Integration Timescales of Visuospatial Task Constraints and Composition Strategies in Reflexes. Poster. #text(
          size: 6.5pt,
          baseline: -0.75pt,
        )[#link("https://drive.google.com/file/d/1WWBgnf7vEsh5YPw07KKoWVKA_ftK2FY7/view?usp=sharing")[#fa-external-link() \[pdf\]]]
    - Champalimaud Research Symposium: _Neurocybernetics at Scale_, Champalimaud Centre for the Unknown, 2025. Awarded a travel grant (€1.5k) by Champalimaud Foundation and Protocol Labs.
    - Symposium on Computational and Physical Understanding of Biological Information Processing, OIST, 2025.
  + Stretch Reflexes Quickly Integrate Spatial Task Constraints During Reaching. Invited talk. 
    - Institute of Neuroscience, UC Louvain, December 2024. (online)
    - Department of Cognitive and Brain Sciences, IIT Gandhinagar, November 2024.
  + Computing Error-bound Inverse Kinematics Solutions in Fixed-time using Low-Power Analog Circuits. Podium presentation, Undergraduate Engineering Research Day, University of Toronto, 2021. #text(
          size: 6.5pt,
          baseline: -0.75pt,
        )[#link("https://docs.google.com/presentation/d/1JCgzjaANxZCT1YolAK2pu6-y0TTslsGPYoZYA25BrpY/edit?usp=sharing")[#fa-external-link() \[slides\]]]
  + Framework for Developing Realistic Finite-Element Models of the Lower Leg. Poster, Undergraduate Summer Research Program, Institute of Biomedical Engineering, University of Toronto, 2018. #text(
          size: 6.5pt,
          baseline: -0.75pt,
        )[#link("https://drive.google.com/file/d/1fyQ9gEUuXSPW41sVGJcnjOaL6f7gqyHJ/view?usp=sharing")[#fa-external-link() \[pdf\]]]
]

#section("Selected Workshops and Training")[
  #grid(
    columns: (auto, 1fr),
    stroke: none,
    row-gutter: 0.5em,
    column-gutter: 0em,
    align: (left, right),
    [Okinawa Computational Neuroscience Course (OCNC), OIST], [June – July 2025],
    [Western-Fields School in Networks and Neuroscience, UWO & Fields Institute], [Sept. 2022],
    [Neuromatch Academy (NMA) Computational Neuroscience Course, Online] + [
      #text(
          size: 6.5pt,
          baseline: -0.75pt,
        )[#link("https://portal.neuromatchacademy.org/certificate/8e5defd4-b3e3-4d58-bda1-59f553dc644a")[#fa-external-link() \[certificate\]]]
    ], [July 2022],
  )
]

#section("Technical Skills")[
  #par(justify: true)[
    Python $dot$ Julia $dot$ Matlab $dot$ C/C++ $dot$ PyTorch $dot$ ROS $dot$ OpenCV $dot$ Typst $dot$ Graphics & 3D Design $dot$ Mechatronics $dot$ Machining
  ]
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

#section("Selected Projects")[
  #project_descr("Interpretability of Nonlinear Neural Control: Ongoing project on using local linear and bilinear model projections of RNN dynamics that stabilize a delayed cart-pole system, to characterize feedback and feedforward contributions and their interactions.")
  #project_descr("Intuitive Robot Arm Reach: Undergraduate final-year project on creating a reach control method by combining algorithmic models of human developmental learning, like proximodistal exploration and motor babbling, with joint acceleration based control. Designed and evaluated an interpolation-based approach spanning the full reachable workspace rather than specific targets.")
  #project_descr("Analog IK Solver: Generic computation method for inverse kinematics of serial robots using a modular and digitally reconfigurable analog circuit. Error-bound approximate solutions are found in fixed time by continuously evaluating forward kinematics using periodic, phase-locked, and frequency-scaled waveforms as successive joint configurations.")
  #project_descr("CollabBots: Robotic platform, built from scratch, with two opposing robotic arms and orthogonal cameras to implement and test visual servoing and collaborative scheduling for picking and placing toy blocks in pre-specified goal patterns.")
  #project_descr("Traffic and Emission Control System: City-scale IoT system integrating exhaust sensors, traffic light controllers, quota-based transportation incentives, and routing algorithms to monitor and manage congestion and enable further smart-city applications.")
]

#let oneliner(title, duration) = {
  set par(justify: true)
  grid(
    gutter: 0em,
    columns: (auto, 1fr),
    rows: 1,
    [#title],
    grid.cell(align: right)[#duration]
  )
}

#section("Teaching Assistantship")[
  #grid(
    columns: (auto, 1fr),
    stroke: none,
    row-gutter: 0.5em,
    column-gutter: 0em,
    align: (left, right),
    [PP3000E: _Experimental Lab_, PhysPharm Department, University of Western Ontario], [Fall 2023 – Winter 2024],
    [MAT188: _Applied Linear Algebra_, Maths Department, University of Toronto], [Fall 2019],
    [MAT135: _Calculus 1_, Maths Department, University of Toronto], [Fall 2018]
  )
]

#section("Extracurricular Activities and Service")[
  #project_descr("Academic Officer: Elected to represent the student assembly at OIST and liaise with the graduate school. Responsibilities included identifying inefficiencies and suggesting improvements to the academic program and advocating for student concerns and interests.")
  #project_descr("Big Ideas Club Chair: Hosted discussions and reading sessions on creativity, philosophy of science, and consciousness. Also organized a panel discussion on science and philosophy of consciousness, attended by 40+ graduate students and postdocs at UWO.")
  #project_descr("Technical Clubs: Led teams at DPS RK Puram and aUToronto to multiple wins in competitions at all levels, and mentored juniors.")
  #project_descr("Hobbies and Side Interests: Photography and painting; citizen science; environmental technology; education systems; AI for good; cognitive architectures; philosophy of mind, intelligence, and consciousness; Indian philosophy; Sanskrit; yoga and meditation.")
  #project_descr("Sports and Outdoor Activities: Love playing cricket and badminton, and have also played in local cricket leagues. I also enjoy running, hiking, camping, and long walks in nature.")
]