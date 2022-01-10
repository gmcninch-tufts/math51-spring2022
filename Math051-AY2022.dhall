-- Time-stamp: <2022-01-09 Sun 22:20 EST - george@valhalla>
let Dow = < Mon | Tue | Wed | Thu | Fri | Sat | Sun >

let concat = https://prelude.dhall-lang.org/List/concat

let DD = < DowT : Dow | DowA : Dow | Date : Text >

let Dt = { sd : DD, stime : Text, location : Text }

let ComponentSched = List Dt

let ComponentSpec =
      < Lecture :
          { sched : ComponentSched, compDesc : Text, topics : List Text }
      | Recitation :
          { sched : ComponentSched
          , compDesc : Text
          , instructor : Text
          , topics : List Text
          }
      | Assignment :
          { sched : ComponentSched, compDesc : Text, assignments : List Text }
      | Exam : { sched : ComponentSched, compDesc : Text }
      >

let assignments =
      [ "PS1 - differential equations via integration (§1.1)"
      , "PS2 - Integration & separation of variables; Linear Differential Equations (§ 1.2, 1.3)"
      , "PS3 - Existence & Uniqueness; Graphing Solutions (§ 1.3, 1.6, 1.7)"
      , "PS4 - Linear ODEs, Cramer’s Rule & the Wronskian (§ 2.2, 2.3)"
      , "PS5 - Linear Independence, const coeff linear ODES (Real Roots) (§ 2.4, 2.5)"
      , "(no assignment collected because of the midterm)"
      , "PS6 - const coeff linear ODES (Complex Roots, undetermined coefficients) (§ 2.6, 2.7)"
      , "PS7 - Variation of Parameters, Linear Systems (§ 2.8, 3.2)"
      , "PS8 - Linear Systems, Linear Independence (§ 3.3, 3.4)"
      , "PS9 - Eigenvalues, Eigenvectors, Row Reduction (§ 3.5, 3.6)"
      , "PS10 - Homogeneous Linear Systems: Real and Complex Roots (§ 3.7, 3.8)"
      , "no homework collected this week"
      , "PS11 - Multiple Roots, Nonhomogeneous Systems (§ 3.9, 3.11)"
      , "PS12 - Laplace Transform (§ 5.2, 5.3)"
      ]

let homework =
        ComponentSpec.Assignment
          { compDesc = "Homework collection"
          , sched =
            [ { sd = DD.DowA Dow.Sun
              , stime = "11:59 PM"
              , location = "gradescope"
              }
            ]
          , assignments
          }
      : ComponentSpec

let lectureTopics =
      [ "Differential equations via integration (§ 1.1)"
      , "Separation of variables. (§ 1.2)"
      , "Linear Differential Equations (§ 1.3)"
      , "Existence & Uniqueness; Graphing Solutions (§ 1.6, 1.7)"
      , "Linear ODEs; Cramer’s Rule and the Wronskian (§ 2.2, 2.3)"
      , "Linear Independence (§ 2.4)"
      , "const coeff linear ODES (Real Roots) (§ 2.5)"
      , "(no lecture; midterm 1)"
      , "const coeff linear ODES (Complex Roots) (§ 2.6)"
      , "inhomogeneous linear ODEs via undetermined coefficients (§ 2.7)"
      , "inhomogeneous linear ODEs via Variation of Parameters (§ 2.8)"
      , "Linear Systems (§ 3.2, 3.3)"
      , "Linear Systems and Linear Independence (§ 3.4)"
      , "Eigenvalues, Eigenvectors (§ 3.5)"
      , "Row Reduction (§ 3.6)"
      , "Homogeneous Linear Systems (real roots) (§ 3.7)"
      , "Homogeneous Linear Systems (complex roots) (§ 3.8)"
      , "Homogeneous Linear Systems (double roots) (§ 3.9)"
      , "Homogeneous Linear Systems (higher multiplicity roots) (§ 3.10)"
      , "(no lecture; midterm 2)"
      , "Nonhomogeneous Systems (§ 3.11)"
      , "The Laplace Transform \$\\mathscr{L}\$ (§ 5.2)"
      , "\$\\mathscr{L}\$ and initial value problems (§ 5.3)"
      , "Properties of \$\\mathscr{L}\$ and \$\\mathscr{L}^{-1}\$ (§ 5.4)"
      , "Functions defined in pieces (§ 5.5)"
      , "Convolution (§ 5.6)"
      , "*Course review*"
      ]

let recitationThuTopics =
      [ "Differential equations via integration (§ 1.1)"
      , "separation of variables & linear ODEs (§ 1.2, 1.3)"
      , "Exist & unique; linear ODEs; Wronskian (§ 1.6, 1.7, 2.2, 2.3)"
      , "Linear Independence, const coeff linear ODES (Real Roots) (§ 2.4, 2.5)"
      , "const coeff linear ODES (Complex Roots) (§ 2.6)"
      , "Non-homogeneous ODES; linear systems & independence (§ 2.7, 2.8, 3.2, 3.3, 3.4)"
      , "Eigenvalues, eigenvectors; row reduction (§ 3.5, 3.6)"
      , "Homogeneous Linear Systems (real and complex roots) (§ 3.7, 3.8)"
      , "Homogeneous Linear Systems (double and multiple roots) (§ 3.9, 3.10)"
      , "Non-homogeneous systems (§ 3.11)"
      , "Laplace Transform \$\\mathscr{L}\$; \$\\mathscr{L}\$ and initial value problems (§ 5.2, 5.3)"
      , "**[no recitation]**"
      , "properties of \$\\mathscr{L}\$ and  \$\\mathscr{L}^{-1}\$; functions defined in pieces; convolution (§ 5.4, 5.5, 5.6, 5.7)"
      ]

let recitationFriTopics =
      [ "Differential equations via integration (§ 1.1)"
      , "separation of variables & linear ODEs (§ 1.2, 1.3)"
      , "Exist & unique; linear ODEs; Wronskian (§ 1.6, 1.7, 2.2, 2.3)"
      , "Linear Independence, const coeff linear ODES (Real Roots) (§ 2.4, 2.5)"
      , "const coeff linear ODES (Complex Roots) (§ 2.6)"
      , "**[no recitation]**"
      , "Non-homogeneous ODES; linear systems & independence (§ 2.7, 2.8, 3.2, 3.3, 3.4)"
      , "Eigenvalues, eigenvectors; row reduction (§ 3.5, 3.6)"
      , "Homogeneous Linear Systems (real and complex roots) (§ 3.7, 3.8)"
      , "Homogeneous Linear Systems (double and multiple roots) (§ 3.9, 3.10)"
      , "Non-homogeneous systems (§ 3.11)"
      , "Laplace Transform \$\\mathscr{L}\$ and initial value problems (§ 5.2, 5.3)"
      , "properties of \$\\mathscr{L}\$ and  \$\\mathscr{L}^{-1}\$; functions defined in pieces; convolution (§ 5.4, 5.5, 5.6, 5.7)"
      ]

let exams =
      [ ComponentSpec.Exam
          { compDesc = "Midterm 1"
          , sched =
            [ { sd = DD.Date "2022-02-14"
              , stime = "12:00-01:20 PM"
              , location = "TBA"
              }
            ]
          }
      , ComponentSpec.Exam
          { compDesc = "Midterm 2"
          , sched =
            [ { sd = DD.Date "2022-04-04"
              , stime = "12:00-01:20 PM"
              , location = "TBA"
              }
            ]
          }
      , ComponentSpec.Exam
          { compDesc = "Final exam"
          , sched =
            [ { sd = DD.Date "2022-05-09"
              , stime = "08:30-10:30"
              , location = "TBA"
              }
            ]
          }
      ]

let recitations =
      [ ComponentSpec.Recitation
          { compDesc = "Thursday Recitation"
          , sched =
            [ { sd = DD.DowT Dow.Thu
              , stime = "(several times)"
              , location = "TBD"
              }
            ]
          , topics = recitationThuTopics
          , instructor = "Hasselblatt, McNinch, Tu, [TA]"
          }
      , ComponentSpec.Recitation
          { compDesc = "Friday Recitation"
          , sched =
            [ { sd = DD.DowT Dow.Fri
              , stime = "(several times)"
              , location = "TBD"
              }
            ]
          , topics = recitationFriTopics
          , instructor = "Hasselblatt, McNinch, Tu, [TA]"
          }
      ]

in  [ { courseAY = "AY2021-2022"
      , courseSem = "spring"
      , title = "Math-051"
      , sections = [ "01" ]
      , courseDescription = "Differential Equations"
      , chair = "George McNinch"
      , instructors = [ "Boris Hasselblatt", "Loring Tu", "[TA]" ]
      , target =
        { dir = "/home/george/Classes/math51-spring2022/pacing"
        , base = "Math-051--2022-Spring"
        }
      , courseComponents =
          concat
            ComponentSpec
            [ [ homework
              , ComponentSpec.Lecture
                  { compDesc = "Lecture"
                  , sched =
                    [ { sd = DD.DowT Dow.Mon
                      , stime = "13:30-14:20"
                      , location = "TBA"
                      }
                    , { sd = DD.DowT Dow.Wed
                      , stime = "13:30-14:20"
                      , location = "TBA"
                      }
                    ]
                  , topics = lectureTopics
                  }
              ]
            , exams
            , recitations
            ]
      }
    ]
