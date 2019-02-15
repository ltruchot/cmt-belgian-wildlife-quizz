module Quiz exposing (ImgQuizItem, QuizItem, QuizQa, pickQuizQa, WildlifeQuizType(..), getImgWildlifeQuiz)

import Array exposing (Array)
import ArrayHelper
import StringHelper


type WildlifeQuizType = Vernacular
    | Binominal

type alias QuizBucketOptions =
    { prefix : String
    , folder : String
    , wlType : WildlifeQuizType
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


getImgWildlifeQuiz : List ImgQuizItem -> QuizBucketOptions -> Array QuizQa
getImgWildlifeQuiz quizData options =
        Array.fromList
        (List.map
            (\item ->
                { question = StringHelper.interpolate 
                    "/assets/img/${folder}/resized/${prefix}_${id}.jpg" 
                    [("folder", options.folder)
                    , ("prefix", options.prefix)
                    , ("id", item.id)
                    ]
                , answer = case options.wlType of
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
