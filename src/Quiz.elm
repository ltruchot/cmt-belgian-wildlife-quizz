module Quiz exposing (ImgQuizItem, QuizItem, QuizQa, pickQuizQa)

import Array
import ArrayHelper


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


pickQuizQa : Int -> Array.Array QuizQa -> Array.Array QuizQa -> ( QuizItem, Array.Array QuizQa )
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
