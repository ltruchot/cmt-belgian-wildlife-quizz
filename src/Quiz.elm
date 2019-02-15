module Quiz exposing (GameOverMsgs, ImgQuizItem, QuizItem, QuizOptions, QuizQa, WildlifeQuizType(..), getImgWildlifeQuiz, pickQuizQa)

import Array exposing (Array)
import ArrayHelper
import StringHelper


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
