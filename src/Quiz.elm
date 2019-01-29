module Quiz exposing (QuizItem, QuizQa, belgianBirdsQuiz, periodicTableQuiz, pickQuizQa)

import Array exposing (Array)
import ArrayHelper


type alias QuizQa =
    ( String, String )


type alias QuizItem =
    { qa : QuizQa
    , answers : List String
    }


pickQuizQa : Int -> Array QuizQa -> Array QuizQa -> ( QuizItem, Array QuizQa )
pickQuizQa randomIdx qas allQas =
    let
        ( qa, remainingQas ) =
            ArrayHelper.sliceByIndex qas randomIdx
    in
    ( { qa = Maybe.withDefault ( "", "" ) qa
      , answers = []
      }
    , remainingQas
    )


periodicTableQuiz : Array QuizQa
periodicTableQuiz =
    Array.fromList
        [ ( "Hélium", "He" )
        , ( "Hydrogène", "H" )
        , ( "Lithium", "Li" )
        , ( "Béryllium", "Be" )
        , ( "Bore", "B" )
        , ( "Carbone", "C" )
        , ( "Azote", "N" )
        , ( "Oxygène", "O" )
        ]


belgianBirdsQuiz : Array QuizQa
belgianBirdsQuiz =
    Array.fromList (List.map (\bird -> ( "assets/img/" ++ bird.id ++ ".jpg", bird.vernacularName )) belgianBirds)


type alias ImgQuizzItem =
    { id : String
    , vernacularName : String
    , binominalName : String
    , license : String
    }


belgianBirds : List ImgQuizzItem
belgianBirds =
    [ { id = "bb59"
      , vernacularName = "Accenteur mouchet"
      , binominalName = "Prunella modularis"
      , license = "Par Karstenderivative work: Wenkbrauwalbatros (talk) — CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=7023601"
      }
    , { id = "bb60"
      , vernacularName = "Alouette des champs"
      , binominalName = "Alauda arvensis"
      , license = "Par Daniel Pettersson — Picture taken by Daniel Pettersson. Uploaded to commons by oskila with his permission. File taken from http://www.fagelfoto.se, CC BY-SA 2.5 se, https://commons.wikimedia.org/w/index.php?curid=1722926"
      }
    , { id = "bb61"
      , vernacularName = "Autour des palombes"
      , binominalName = "Accipiter gentilis"
      , license = "Par Elon Howard Eaton (1866-1935, author), Louis Agassiz Fuertes (artist, 1874-1927) — Birds of New York (New York State Museum. Memoir 12), Albany: University of the State of New York. Plates by Fuertes later reproduced in Birds of America (1917?) by Thomas Gilbert Pearson (1873-1943) et al., Domaine public, https://commons.wikimedia.org/w/index.php?curid=715780"
      }
    , { id = "bb62"
      , vernacularName = "Avocette élégante"
      , binominalName = "Recurvirostra avosetta"
      , license = "Par Andreas Trepte — Travail personnel, CC BY-SA 2.5, https://commons.wikimedia.org/w/index.php?curid=10610115"
      }
    ]
