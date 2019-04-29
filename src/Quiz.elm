module Quiz exposing (DisplayableQuiz, GameOverMsgs, ImgQuizItem, QuizItem, QuizOptions, QuizQa, WildlifeQuizType(..), emptyDisplayableQuiz, emptyOptions, emptyQuizItem, getImgWildlifeQuiz, pickQuizQa)

import Array exposing (Array)
import ArrayHelper
import StringHelper



-- Final quiz record to display in view


type alias DisplayableQuiz =
    { qas : Array QuizQa
    , options : QuizOptions
    , uniqName : String
    , visibleName : String
    }


emptyDisplayableQuiz : DisplayableQuiz
emptyDisplayableQuiz =
    { qas = Array.empty
    , options = emptyOptions
    , uniqName = ""
    , visibleName = ""
    }


emptyOptions : QuizOptions
emptyOptions =
    { prefix = ""
    , folder = ""
    , gameOverMsgs = { sad = "", neutral = "", happy = "", proud = "" }
    }


emptyQuizItem : QuizItem
emptyQuizItem =
    { qa = { question = "", answer = "", title = "" }
    , answers = []
    }


type WildlifeQuizType
    = Vernacular
    | Binominal


type alias QuizOptions =
    { prefix : String
    , folder : String
    , gameOverMsgs : GameOverMsgs
    }


type alias QuizQa =
    { question : String
    , answer : String
    , title : String
    }


type alias QuizItem =
    { qa : QuizQa
    , answers : List String
    }


type alias ImgQuizItem =
    { id : String
    , vernacularName : String
    , binominalName : String
    , license : String
    }


type alias GameOverMsgs =
    { sad : String
    , neutral : String
    , happy : String
    , proud : String
    }


getImgWildlifeQuiz : List ImgQuizItem -> WildlifeQuizType -> QuizOptions -> Array QuizQa
getImgWildlifeQuiz quizData wlType options =
    Array.fromList
        (List.map
            (\item ->
                { question =
                    StringHelper.interpolate
                        "/assets/img/${folder}/resized/${prefix}_${id}.jpg"
                        [ ( "folder", options.folder )
                        , ( "prefix", options.prefix )
                        , ( "id", item.id )
                        ]
                , answer =
                    case wlType of
                        Vernacular ->
                            item.vernacularName

                        Binominal ->
                            item.binominalName
                , title = item.license
                }
            )
            quizData
        )


pickQuizQa : Int -> Array QuizQa -> Array QuizQa -> ( QuizItem, Array QuizQa )
pickQuizQa randomIdx qas allQas =
    let
        ( qa, remainingQas ) =
            ArrayHelper.sliceByIndex qas randomIdx
    in
    ( { qa = Maybe.withDefault { question = "", answer = "", title = "" } qa
      , answers = []
      }
    , remainingQas
    )
