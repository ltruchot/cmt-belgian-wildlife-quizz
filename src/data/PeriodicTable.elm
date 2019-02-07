module PeriodicTable exposing (periodicTableQuiz)

import Array
import Quiz exposing (QuizQa)


periodicTableQuiz : Array.Array QuizQa
periodicTableQuiz =
    Array.fromList
        [ { question = "Hélium", answer = "He", title = "" }
        , { question = "Hydrogène", answer = "H", title = "" }
        , { question = "Lithium", answer = "Li", title = "" }
        , { question = "Béryllium", answer = "Be", title = "" }
        , { question = "Bore", answer = "B", title = "" }
        , { question = "Carbone", answer = "C", title = "" }
        , { question = "Azote", answer = "N", title = "" }
        , { question = "Oxygène", answer = "O", title = "" }
        ]
