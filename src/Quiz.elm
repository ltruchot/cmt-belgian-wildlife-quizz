module Quiz exposing (QuizQa, periodicTable)

import Array exposing (Array)


type alias QuizQa =
    ( String, String )


periodicTable : Array QuizQa
periodicTable =
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
