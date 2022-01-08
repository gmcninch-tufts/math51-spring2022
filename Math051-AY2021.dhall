-- Time-stamp: <2021-11-21 Sun 14:22 EST - george@valhalla>
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
          , teachAsst : Text
          , topics : List Text
          }
      | Assignment :
          { sched : ComponentSched, compDesc : Text, assignments : List Text }
      | Exam : { sched : ComponentSched, compDesc : Text }
      >

let assignments =
      [ "PS1 - dry-run assignment"
      , "PS2 - Integration & separation of variables. (§ 1.1, 1.2)"
      , "PS3 - Linear Differential Equations; Existence & Uniqueness; Graphing Solutions (§ 1.3, 1.6, 1.7)"
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

let lectureTopicsMon =
      [ "Integration & separation of variables. (§ 1.1, 1.2)"
      , "Linear Differential Equations; Existence & Uniqueness; Graphing Solutions (§ 1.3, 1.6, 1.7)"
      , "Cramer’s Rule, the Wronskian (§ 2.2, 2.3)"
      , "Linear Independence, const coeff linear ODES (Real Roots) (§ 2.4, 2.5)"
      , "const coeff linear ODES (Complex Roots, undetermined coefficients) (§ 2.6, 2.7)"
      , "Variation of Parameters, Linear Systems (§ 2.8, 3.2)"
      , "Linear Systems, Linear Independence (§ 3.3, 3.4)"
      , "Eigenvalues, Eigenvectors, Row Reduction (§ 3.5, 3.6)"
      , "Homogeneous Linear Systems: Real and Complex Roots (§ 3.7, 3.8)"
      , "(thanksgiving)"
      , "Multiple Roots, Nonhomogeneous Systems (§ 3.9, 3.11)"
      , "The Laplace Transform (§ 5.2, 5.3)"
      ]

let lectureTopicsWed =
      [ "welcome..."
      , "Integration & separation of variables. (§ 1.1, 1.2)"
      , "Linear Differential Equations; Existence & Uniqueness; Graphing Solutions (§ 1.3, 1.6, 1.7)"
      , "Cramer’s Rule, the Wronskian (§ 2.2, 2.3)"
      , "Linear Independence, const coeff linear ODES (Real Roots) (§ 2.4, 2.5)"
      , "const coeff linear ODES (Complex Roots, undetermined coefficients) (§ 2.6, 2.7)"
      , "(midterm exam day)"
      , "Variation of Parameters, Linear Systems (§ 2.8, 3.2)"
      , "Linear Systems, Linear Independence (§ 3.3, 3.4)"
      , "Eigenvalues, Eigenvectors, Row Reduction (§ 3.5, 3.6)"
      , "Homogeneous Linear Systems: Real and Complex Roots (§ 3.7, 3.8)"
      , "Multiple Roots, Nonhomogeneous Systems (§ 3.9, 3.11)"
      , "The Laplace Transform (§ 5.2, 5.3)"
      ]

let lectureTopicsFri =
      [ "Integration & separation of variables. (§ 1.1, 1.2)"
      , "Linear Differential Equations; Existence & Uniqueness; Graphing Solutions (§ 1.3, 1.6, 1.7)"
      , "Cramer’s Rule, the Wronskian (§ 2.2, 2.3)"
      , "Linear Independence, const coeff linear ODES (Real Roots) (§ 2.4, 2.5)"
      , "const coeff linear ODES (Complex Roots, undetermined coefficients) (§ 2.6, 2.7)"
      , "(midterm review)"
      , "Variation of Parameters, Linear Systems (§ 2.8, 3.2)"
      , "Linear Systems, Linear Independence (§ 3.3, 3.4)"
      , "Eigenvalues, Eigenvectors, Row Reduction (§ 3.5, 3.6)"
      , "Homogeneous Linear Systems: Real and Complex Roots (§ 3.7, 3.8)"
      , "Multiple Roots, Nonhomogeneous Systems (§ 3.9, 3.11)"
      , "The Laplace Transform (§ 5.2, 5.3)"
      , "Course review"
      ]

let recitationTopics =
      [ "Integration & separation of variables. (§ 1.1, 1.2)"
      , "Linear Differential Equations; Existence & Uniqueness; Graphing Solutions (§ 1.3, 1.6, 1.7)"
      , "Cramer’s Rule, the Wronskian (§ 2.2, 2.3)"
      , "Linear Independence, const coeff linear ODES (Real Roots) (§ 2.4, 2.5)"
      , "const coeff linear ODES (Complex Roots, undetermined coefficients) (§ 2.6, 2.7)"
      , "(midterm review)"
      , "Variation of Parameters, Linear Systems (§ 2.8, 3.2)"
      , "Linear systems & Linear Independence (§ 3.3, 3.4)"
      , "Eigenvalues, Eigenvectors, Row Reduction; Homogeneous Linear Systems: Real and Complex Roots (§ 3.5, 3.6, 3.7, 3.8)"
      , "(thanksgiving)"
      , "Multiple Roots, Nonhomogeneous Systems (§ 3.9, 3.11)"
      , "The Laplace Transform (§ 5.2, 5.3)"
      , "Course review"
      ]

let exams =
      [ ComponentSpec.Exam
          { compDesc = "Midterm exam"
          , sched =
            [ { sd = DD.Date "2021-10-20"
              , stime = "06:00-07:20"
              , location = "Pearson Lab 104"
              }
            ]
          }
      , ComponentSpec.Exam
          { compDesc = "Final exam"
          , sched =
            [ { sd = DD.Date "2021-12-17"
              , stime = "08:30-10:30"
              , location = "TBA"
              }
            ]
          }
      ]

let recitations =
      [ ComponentSpec.Recitation
          { compDesc = "Recitation 51R"
          , sched =
            [ { sd = DD.DowT Dow.Tue
              , stime = "(multiple times)"
              , location = "(multiple locations)"
              }
            ]
          , topics = recitationTopics
          , teachAsst = "Buck & Machado"
          }
      ]

in  [ { courseAY = "AY2021-2022"
      , courseSem = "fall"
      , title = "Math-051"
      , sections = [ "01", "02" ]
      , courseDescription = "Differential Equations"
      , instructor = "George McNinch"
      , target =
        { dir = "/home/george/Classes/math51-fall2021/pacing"
        , base = "Math-051--AY2021-2022--0102"
        }
      , courseComponents =
          concat
            ComponentSpec
            [ [ homework
              , ComponentSpec.Lecture
                  { compDesc = "In-person Lecture 51-01"
                  , sched =
                    [ { sd = DD.DowT Dow.Mon
                      , stime = "09:00-10:15 AM"
                      , location = "BP2"
                      }
                    ]
                  , topics = lectureTopicsMon
                  }
              , ComponentSpec.Lecture
                  { compDesc = "In-person Lecture 51-02"
                  , sched =
                    [ { sd = DD.DowT Dow.Wed
                      , stime = "09:00-10:15 AM"
                      , location = "BP2"
                      }
                    ]
                  , topics = lectureTopicsWed
                  }
              , ComponentSpec.Lecture
                  { compDesc = "Virtual Lecture 51-01 & 51-02"
                  , sched =
                    [ { sd = DD.DowT Dow.Fri
                      , stime = "09:00-10:15 AM"
                      , location = "zoom"
                      }
                    ]
                  , topics = lectureTopicsFri
                  }
              ]
            , exams
            , recitations
            ]
      }
    , { courseAY = "AY2021-2022"
      , courseSem = "fall"
      , title = "Math-051"
      , sections = [ "03", "04" ]
      , courseDescription = "Differential Equations"
      , instructor = "Zbigniew Nitecki"
      , target =
        { dir = "/home/george/Classes/math51-fall2021/pacing"
        , base = "Math-051--AY2021-2022--0304"
        }
      , courseComponents =
          concat
            ComponentSpec
            [ [ homework
              , ComponentSpec.Lecture
                  { compDesc = "In-person Lecture 51-03"
                  , sched =
                    [ { sd = DD.DowT Dow.Mon
                      , stime = "10:30-11:45 AM"
                      , location = "BP2"
                      }
                    ]
                  , topics = lectureTopicsMon
                  }
              , ComponentSpec.Lecture
                  { compDesc = "In-person Lecture 51-04"
                  , sched =
                    [ { sd = DD.DowT Dow.Wed
                      , stime = "10:30-11:45 AM"
                      , location = "BP2"
                      }
                    ]
                  , topics = lectureTopicsWed
                  }
              , ComponentSpec.Lecture
                  { compDesc = "Virtual Lecture 51-03 & 51-04"
                  , sched =
                    [ { sd = DD.DowT Dow.Fri
                      , stime = "10:30-11:45 AM"
                      , location = "zoom"
                      }
                    ]
                  , topics = lectureTopicsFri
                  }
              ]
            , recitations
            , exams
            ]
      }
    ]
