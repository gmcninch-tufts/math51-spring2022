-- Time-stamp: <2022-02-03 Thu 08:13 EST - george@valhalla>
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

let TaskSpec =
      < TaskRep : { desc : Text, repDeadline : Dow, taskStaffList : List Text }
      | TaskSin : { desc : Text, deadline : Text, taskStaff : Text }
      | Meeting : { desc : Text, details : Text, meetingDow : Dow }
      >

let assignments =
      [ "PS01: Differential equations via integration (§ 1.1)"
      , "PS02: Separation of vars; 1st order linear ODEs (§ 1.2, 1.3)"
      , "PS03: Exist/unique; linear ODEs; Wronskian (§ 1.6, 2.2, 2.3)"
      , "PS04: Linear Indep; Const coeff linear ODEs (real roots) (§ 2.4, 2.5)"
      , "PS05: Const coeff linear ODEs (complex roots) (§ 2.6)"
      , "PS06: Non-homog ODES (§ 2.7, 2.8)"
      , "PS07: Lin sys & indep (§ 3.2, 3.3, 3.4)"
      , "PS08: Eigenvalues, eigenvectors; row reduction (§ 3.5, 3.6)"
      , "PS09: Homog linear sys (§ 3.7, 3.8, 3.9, 3.10)"
      , "PS10: Non-homogeneous systems (§ 3.11)"
      , "PS11: Laplace transform \$\\mathscr{L}\$ and initial value problems (§ 5.2, 5.3)"
      , " [ no assignment collected this week ] "
      , "PS12: Properties of \$\\mathscr{L}\$ and  \$\\mathscr{L}^{-1}\$; piecewise functions; convolution (§ 5.4, 5.5, 5.6)"
      ]

let problemSetStaff =
      [ "PS02 - Loring Tu"
      , "PS03 - Boris Hassleblatt"
      , "PS04 - George McNinch"
      , "PS05 - Chandler Smith"
      , "PS06 - Loring Tu"
      , "PS07 - Boris Hasselblatt"
      , "PS08 - George McNinch"
      , "PS09 - Chandler Smith"
      , ""
      , ""
      , "PS10 - Loring Tu"
      , "PS11 - Boris Hasselblatt"
      , "PS12 - George McNinch"
      ]

let recWorksheetStaff =
      [ "rec02 - George McNinch"
      , "rec03 - Chandler Smith"
      , "rec04 - Boris Hasselblatt"
      , "rec05 - Loring Tu"
      , ""
      , "rec06 - George McNinch"
      , "rec07 - Chandler Smith"
      , "rec08 - Boris Hasselblatt"
      , ""
      , "rec09 - Loring Tu"
      , "rec10 - George McNinch"
      , "rec11 - Chandler Smith"
      , "rec12 - Boris Hasselblatt"
      , "rec13 - Loring Tu"
      ]

let tasks =
      [ TaskSpec.TaskRep
          { desc = "Write problem sets and solutions"
          , repDeadline = Dow.Mon
          , taskStaffList = problemSetStaff
          }
      , TaskSpec.TaskRep
          { desc = "Write worksheet / suggest content for recitation"
          , repDeadline = Dow.Tue
          , taskStaffList = recWorksheetStaff
          }
      , TaskSpec.TaskSin
          { desc = "Write and vet Midterm 1"
          , deadline = "2022-02-02"
          , taskStaff = "McNinch, Tu (beta-tester: Smith)"
          }
      , TaskSpec.TaskSin
          { desc = "Write and vet Midterm 2"
          , deadline = "2022-04-04"
          , taskStaff = "Tu, Hasselblatt (beta-tester: Smith)"
          }
      , TaskSpec.TaskSin
          { desc = "Write and vet Final Exam"
          , deadline = "2022-04-27"
          , taskStaff = "McNinch, Hasselblatt (beta-test: Smith)"
          }
      , TaskSpec.Meeting
          { desc = "Math 51 Staff Meeting"
          , details = "Rm 510, 15:00"
          , meetingDow = Dow.Wed
          }
      ]

let homework =
      ComponentSpec.Assignment
        { compDesc = "Homework collection"
        , sched =
          [ { sd = DD.DowA Dow.Mon
            , stime = "11:00 PM"
            , location = "gradescope"
            }
          ]
        , assignments
        }

let lectureTopics =
      [ "Differential equations via integration (§ 1.1)"
      , "Separation of variables (§ 1.2)"
      , "Linear Differential Equations (§ 1.3)"
      , "Existence & Uniqueness; Linear ODEs (§ 1.6, 2.2)"
      , "Cramer’s Rule and the Wronskian (§ 2.3 & App. A)"
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
      , "Non-homogeneous Systems (§ 3.11)"
      , "(no lecture; midterm 2)"
      , "The Laplace transform \$\\mathscr{L}\$ and initial value problems (§ 5.2, 5.3)"
      , "Properties of \$\\mathscr{L}\$ and \$\\mathscr{L}^{-1}\$ (§ 5.4)"
      , "Piecewise functions (§ 5.5)"
      , "Convolution (§ 5.6)"
      , "*Course review*"
      , "*Course review*"
      ]

let recitationThuTopics =
      [ "Introduction; Differential equations via integration (§ 1.1)"
      , "Separation of variables; linear ODEs (§ 1.2, 1.3)"
      , "Exist & unique; linear ODEs; Wronskian (§ 1.6, 2.2, 2.3, App. A)"
      , "Linear Independence, const coeff linear ODEs (real roots) (§ 2.4, 2.5)"
      , "Const coeff linear ODEs (complex roots) (§ 2.6)"
      , "Linear sys & indep (§ 3.2, 3.3, 3.4)"
      , "Eigenvalues, eigenvectors; row reduction (§ 3.5, 3.6)"
      , "Homogeneous Linear Systems (real and complex roots) (§ 3.7, 3.8)"
      , "Homogeneous Linear Systems (double and multiple roots) (§ 3.9, 3.10)"
      , "Non-homogeneous systems (§ 3.11)"
      , "Laplace transform \$\\mathscr{L}\$ and initial value problems  (§ 5.2, 5.3)"
      , "**[no recitation]**"
      , "Properties of \$\\mathscr{L}\$ and  \$\\mathscr{L}^{-1}\$; piecewise functions; convolution (§ 5.4, 5.5, 5.6, 5.7)"
      ]

let recitationFriTopics =
      [ "Introduction; Differential equations via integration (§ 1.1)"
      , "Separation of variables; linear ODEs (§ 1.2, 1.3)"
      , "Exist & unique; linear ODEs; Wronskian (§ 1.6, 2.2, 2.3, App. A)"
      , "Linear Independence, const coeff linear ODEs (real roots) (§ 2.4, 2.5)"
      , "Const coeff linear ODEs (complex roots) (§ 2.6)"
      , "**[no recitation]**"
      , "Linear sys & indep (§ 3.2, 3.3, 3.4)"
      , "Eigenvalues, eigenvectors; row reduction (§ 3.5, 3.6)"
      , "Homogeneous Linear Systems (real and complex roots) (§ 3.7, 3.8)"
      , "Homogeneous Linear Systems (double and multiple roots) (§ 3.9, 3.10)"
      , "Non-homogeneous systems (§ 3.11)"
      , "Laplace transform \$\\mathscr{L}\$ and initial value problems (§ 5.2, 5.3)"
      , "Properties of \$\\mathscr{L}\$ and  \$\\mathscr{L}^{-1}\$; piecewise functions; convolution (§ 5.4, 5.5, 5.6, 5.7)"
      ]

let exams =
      [ ComponentSpec.Exam
          { compDesc = "Midterm 1 (12:00-1:20 PM)"
          , sched =
            [ { sd = DD.Date "2022-02-14"
              , stime = "12:00-01:20 PM"
              , location = "TBA"
              }
            ]
          }
      , ComponentSpec.Exam
          { compDesc = "Midterm 2 (12:00-1:20 PM)"
          , sched =
            [ { sd = DD.Date "2022-04-11"
              , stime = "12:00-01:20 PM"
              , location = "TBA"
              }
            ]
          }
      , ComponentSpec.Exam
          { compDesc = "Final exam -- Math51"
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
          { compDesc = "Thurs Recitation"
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
          { compDesc = "Fri Recitation"
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
      , courseTasks = tasks
      }
    ]
