module BelgianWildlife exposing (vernacularQuizzList, binominalQuizzList)

import BelgianBirds exposing (belgianBirdsQuiz, binominalBirdsQuiz)
import BelgianInsects exposing (belgianInsectsQuiz, binominalInsectsQuiz)
import BelgianMammals exposing (belgianMammalsQuiz, binominalMammalsQuiz)
import BelgianMushrooms exposing (belgianMushroomsQuiz, binominalMushroomsQuiz)
import BelgianPlants exposing (belgianPlantsQuiz, binominalPlantsQuiz)
import BelgianReptiles exposing (belgianReptilesQuiz, binominalReptilesQuiz)
import BelgianTrees exposing (belgianTreesQuiz, binominalTreesQuiz)
import Quiz exposing (DisplayableQuiz)

vernacularQuizzList : List DisplayableQuiz
vernacularQuizzList =
    [ belgianBirdsQuiz
    , belgianInsectsQuiz
    , belgianMammalsQuiz
    , belgianPlantsQuiz
    , belgianReptilesQuiz
    , belgianTreesQuiz
    , belgianMushroomsQuiz
    ]


binominalQuizzList : List DisplayableQuiz
binominalQuizzList =
    [ binominalBirdsQuiz
    , binominalInsectsQuiz
    , binominalMammalsQuiz
    , binominalPlantsQuiz
    , binominalReptilesQuiz
    , binominalTreesQuiz
    , binominalMushroomsQuiz
    ]
