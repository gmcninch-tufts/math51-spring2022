-- Time-stamp: <2022-01-11 Tue 13:46 EST - george@valhalla>
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
      [ "PS01: Differential equations via integration (§ 1.1)"
      , "PS02: Separation of vars; 1st order linear ODEs (§ 1.2, 1.3)"
      , "PS03: Exist/unique; linear ODEs; Wronskian (§ 1.6, 1.7, 2.2, 2.3)"
      , "PS04: Linear Indep; Const coeff linear ODEs (real roots) (§ 2.4, 2.5)"
      , "PS05: Const coeff linear ODEs (complex roots) (§ 2.6)"
      , "PS06: Non-homog ODES; lin sys & indep (§ 2.7, 2.8, 3.2, 3.3, 3.4)"
      , "PS07: Eigenvalues, eigenvectors; row reduction (§ 3.5, 3.6)"
      , "PS08: Homog linear sys (real and complex roots) (§ 3.7, 3.8)"
      , "PS09: Homog linear sys (double and multiple roots) (§ 3.9, 3.10)"
      , "PS10: Non-homogeneous systems (§ 3.11)"
      , "PS11: Laplace transform \$\\mathscr{L}\$; \$\\mathscr{L}\$ & initial value problems (§ 5.2, 5.3)"
      , "PS12: properties of \$\\mathscr{L}\$ and  \$\\mathscr{L}^{-1}\$; piecewise functions; convolution (§ 5.4, 5.5, 5.6, 5.7)"
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
      , "Separation of variables (§ 1.2)"
      , "Linear Differential Equations (§ 1.3)"
      , "Existence & Uniqueness; Graphing Solutions (§ 1.6, 1.7)"
      , "Linear ODEs; Cramer’s Rule and the Wronskian (§ 2.2, 2.3)"
      , "Linear Independence (§ 2.4)"
      , "Const coeff linear ODEs (real roots) (§ 2.5)"
      , "(no lecture; midterm 1)"
      , "Const coeff linear ODEs (complex roots) (§ 2.6)"
      , "Non-homog linear ODEs via undetermined coeffs (§ 2.7)"
      , "Non-homog linear ODEs via variation of parameters (§ 2.8)"
      , "Linear Systems (§ 3.2, 3.3)"
      , "Linear systems and independence (§ 3.4)"
      , "Eigenvalues, Eigenvectors (§ 3.5)"
      , "Row Reduction (§ 3.6)"
      , "Homogeneous linear systems (real roots) (§ 3.7)"
      , "Homogeneous linear systems (complex roots) (§ 3.8)"
      , "Homogeneous linear systems (double roots) (§ 3.9)"
      , "Homogeneous linear systems (higher multiplicity roots) (§ 3.10)"
      , "(no lecture; midterm 2)"
      , "Non-homogeneous Systems (§ 3.11)"
      , "The Laplace transform \$\\mathscr{L}\$ (§ 5.2)"
      , "\$\\mathscr{L}\$ and initial value problems (§ 5.3)"
      , "Properties of \$\\mathscr{L}\$ and \$\\mathscr{L}^{-1}\$ (§ 5.4)"
      , "Piecewise functions (§ 5.5)"
      , "Convolution (§ 5.6)"
      , "*Course review*"
      ]

let recitationThuTopics =
      [ "Introduction; Differential equations via integration (§ 1.1)"
      , "Separation of variables; linear ODEs (§ 1.2, 1.3)"
      , "Exist & unique; linear ODEs; Wronskian (§ 1.6, 1.7, 2.2, 2.3)"
      , "Linear Independence, const coeff linear ODEs (real roots) (§ 2.4, 2.5)"
      , "Const coeff linear ODEs (complex roots) (§ 2.6)"
      , "Non-homogeneous ODEs; linear sys & indep (§ 2.7, 2.8, 3.2, 3.3, 3.4)"
      , "Eigenvalues, eigenvectors; row reduction (§ 3.5, 3.6)"
      , "Homogeneous Linear Systems (real and complex roots) (§ 3.7, 3.8)"
      , "Homogeneous Linear Systems (double and multiple roots) (§ 3.9, 3.10)"
      , "Non-homogeneous systems (§ 3.11)"
      , "Laplace transform \$\\mathscr{L}\$; \$\\mathscr{L}\$ and initial value problems (§ 5.2, 5.3)"
      , "**[no recitation]**"
      , "Properties of \$\\mathscr{L}\$ and  \$\\mathscr{L}^{-1}\$; piecewise functions; convolution (§ 5.4, 5.5, 5.6, 5.7)"
      ]

let recitationFriTopics =
      [ "Introduction; Differential equations via integration (§ 1.1)"
      , "Separation of variables; linear ODEs (§ 1.2, 1.3)"
      , "Exist & unique; linear ODEs; Wronskian (§ 1.6, 1.7, 2.2, 2.3)"
      , "Linear Independence, const coeff linear ODEs (real roots) (§ 2.4, 2.5)"
      , "Const coeff linear ODEs (complex roots) (§ 2.6)"
      , "**[no recitation]**"
      , "Non-homogeneous ODEs; linear sys & indep (§ 2.7, 2.8, 3.2, 3.3, 3.4)"
      , "Eigenvalues, eigenvectors; row reduction (§ 3.5, 3.6)"
      , "Homogeneous Linear Systems (real and complex roots) (§ 3.7, 3.8)"
      , "Homogeneous Linear Systems (double and multiple roots) (§ 3.9, 3.10)"
      , "Non-homogeneous systems (§ 3.11)"
      , "Laplace transform \$\\mathscr{L}\$ and initial value problems (§ 5.2, 5.3)"
      , "Properties of \$\\mathscr{L}\$ and  \$\\mathscr{L}^{-1}\$; piecewise functions; convolution (§ 5.4, 5.5, 5.6, 5.7)"
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
          , instructor = "Hasselblatt, McNinch, Tu, Chandler Smith"
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
          , instructor = "Hasselblatt, McNinch, Tu, Chandler Smith"
          }
      ]

in  [ { courseAY = "AY2021-2022"
      , courseSem = "spring"
      , title = "Math-051"
      , sections = [ "01" ]
      , courseDescription = "Differential Equations"
      , chair = "George McNinch"
      , instructors = [ "Boris Hasselblatt", "Loring Tu", "Chandler Smith" ]
      , target =
        { dir = "/home/george/Classes/math51-spring2022/pacing"
        , base = "Math51"
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
