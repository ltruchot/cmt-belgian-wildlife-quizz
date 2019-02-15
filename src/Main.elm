module Main exposing (Model, Msg(..), init, main, update, view)

import Array exposing (Array)
import ArrayHelper
import BelgianBirds exposing (belgianBirdsQuiz, latinBirdsQuiz)
import BelgianPlants exposing (belgianPlantsQuiz, latinPlantsQuiz)
import Browser
import FHelper
import Html exposing (Html, a, button, div, h1, h2, img, label, option, p, select, text)
import Html.Attributes exposing (class, classList, disabled, for, href, id, src, title, value)
import Html.Events exposing (on, onClick, onInput)
import Json.Decode as JD
import Quiz exposing (QuizItem, QuizQa, pickQuizQa)
import Time
import StringHelper


type Mode
    = Infinite
    | Exam
    | Credits


type GameState
    = Start
    | AskQuestion
    | WaitNext
    | Over
    | DisplayCredits


type GameOverRatio
    = Sad
    | Neutral
    | Happy
    | Proud



{- question = "/assets/img/belgian_plants/resized/" ++ bird.id ++ ".jpg"
   interpolate
   question = "/assets/img/belgian_plants/resized/" ++ bird.id ++ ".jpg"
-}


calculateGameOverRatio : ( Int, Int ) -> GameOverRatio
calculateGameOverRatio score =
    let
        ratio =
            toFloat (Tuple.first score) / toFloat (Tuple.second score)
    in
    if ratio == 1 then
        Proud

    else if ratio >= 0.75 then
        Happy

    else if ratio >= 0.5 then
        Neutral

    else
        Sad


getGameOverImg : GameOverRatio -> String
getGameOverImg ratio =
    "/assets/img/belgian_birds/resized/"
        ++ (case ratio of
                Sad ->
                    "sad"

                Neutral ->
                    "neutral"

                Happy ->
                    "happy"

                Proud ->
                    "proud"
           )
        ++ ".jpg"


getGameOverSentence : GameOverRatio -> String
getGameOverSentence ratio =
    case ratio of
        Sad ->
            "Oh non ! Tu as rendu les oiseaux tristes avec ce mauvais score..."

        Neutral ->
            "Les oiseaux restent perplexes face à ton score..."

        Happy ->
            "Merci, tu as rendu les oiseaux heureux avec ce joli score..."

        Proud ->
            "Parfait ! Tu fais la fierté du chef de oiseaux avec ce magnifique score..."


main =
    Browser.element
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }


subscriptions : Model -> Sub Msg
subscriptions model =
    if model.gameState == WaitNext then
        Time.every
            (if model.hasWonLast then
                1000

             else
                2000
            )
            (always PickNextQuestion)

    else
        Sub.none



-- MODEL


type alias Model =
    { quizQas : Array QuizQa
    , remainingQuizQas : Array QuizQa
    , currentQuizItem : QuizItem
    , chosenAnswer : String
    , mode : Mode
    , score : ( Int, Int )
    , imgLoaded : Bool
    , hasWonLast : Bool
    , gameState : GameState
    , examLimit : Int
    , gameOverRatio : GameOverRatio
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { quizQas = belgianBirdsQuiz
      , remainingQuizQas = belgianBirdsQuiz
      , currentQuizItem =
            { qa = { question = "", answer = "", title = "" }
            , answers = []
            }
      , chosenAnswer = ""
      , mode = Infinite
      , score = ( 0, 1 )
      , imgLoaded = False
      , hasWonLast = False
      , gameState = Start
      , examLimit = 20
      , gameOverRatio = Neutral
      }
    , cmdNextQuestion belgianBirdsQuiz
    )


cmdNextQuestion : Array QuizQa -> Cmd Msg
cmdNextQuestion qas =
    ArrayHelper.provideRandomElt DisplayNextQuestion qas



-- UPDATE


type Msg
    = DisplayNextQuestion Int
    | PickNextQuestion
    | CheckAnswer String
    | SetOtherAnswers (Array QuizQa)
    | DisplayAnswers (Array QuizQa)
    | DisplayLoadedImg String
    | ChangeMode String
    | ChangeQuiz String


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        DisplayLoadedImg path ->
            ( { model
                | imgLoaded = True
              }
            , Cmd.none
            )

        CheckAnswer answer ->
            let
                hasWon =
                    answer == model.currentQuizItem.qa.answer

                score =
                    ( FHelper.ifThen hasWon ((+) 1) (Tuple.first model.score), Tuple.second model.score )
            in
            ( { model
                | chosenAnswer = answer
                , hasWonLast = hasWon
                , score = score
                , gameState =
                    if
                        Tuple.second model.score
                            == model.examLimit
                            && model.mode
                            == Exam
                    then
                        Over

                    else
                        WaitNext
                , gameOverRatio = calculateGameOverRatio score
              }
            , Cmd.none
            )

        PickNextQuestion ->
            ( { model
                | gameState = AskQuestion
                , chosenAnswer = ""
                , score = ( Tuple.first model.score, Tuple.second model.score + 1 )
              }
            , cmdNextQuestion model.remainingQuizQas
            )

        DisplayNextQuestion randomIdx ->
            let
                ( chosen, remaining ) =
                    pickQuizQa randomIdx model.remainingQuizQas model.quizQas
            in
            ( { model
                | currentQuizItem = chosen
                , imgLoaded = False
                , remainingQuizQas =
                    if Array.length remaining > 0 then
                        remaining

                    else
                        model.quizQas
              }
            , ArrayHelper.provideShuffled SetOtherAnswers (Array.filter (\val -> val.question /= chosen.qa.question) model.quizQas)
            )

        SetOtherAnswers arr ->
            let
                item =
                    model.currentQuizItem

                others =
                    Array.slice 0 3 arr
            in
            ( model
            , ArrayHelper.provideShuffled DisplayAnswers (Array.push item.qa others)
            )

        DisplayAnswers arr ->
            let
                item =
                    model.currentQuizItem
            in
            ( { model
                | score =
                    if model.gameState == Over then
                        ( 0, 1 )

                    else
                        model.score
                , currentQuizItem =
                    { item
                        | answers = Array.toList (Array.map (\qa -> qa.answer) arr)
                    }
              }
            , Cmd.none
            )

        ChangeMode mode ->
            let
                newModel =
                    { model | remainingQuizQas = model.quizQas, gameState = Start }
            in
            case mode of
                "Infinite" ->
                    ( { newModel
                        | mode = Infinite
                      }
                    , cmdNextQuestion newModel.remainingQuizQas
                    )

                "Exam" ->
                    ( { newModel
                        | mode = Exam
                        , score = ( 0, 1 )
                      }
                    , cmdNextQuestion newModel.remainingQuizQas
                    )

                "Credits" ->
                    ( { model
                        | gameState = DisplayCredits
                      }
                    , Cmd.none
                    )

                _ ->
                    ( model, Cmd.none )

        ChangeQuiz quiz ->
            case quiz of
                "BelgianBirds" ->
                    ( { model
                        | score = ( 0, 1 )
                        , quizQas = belgianBirdsQuiz
                        , remainingQuizQas = belgianBirdsQuiz
                      }
                    , cmdNextQuestion belgianBirdsQuiz
                    )

                "LatinBirds" ->
                    ( { model
                        | score = ( 0, 1 )
                        , quizQas = latinBirdsQuiz
                        , remainingQuizQas = latinBirdsQuiz
                      }
                    , cmdNextQuestion latinBirdsQuiz
                    )

                "BelgianPlants" ->
                    ( { model
                        | score = ( 0, 1 )
                        , quizQas = belgianPlantsQuiz
                        , remainingQuizQas = belgianPlantsQuiz
                      }
                    , cmdNextQuestion belgianPlantsQuiz
                    )

                "LatinPlants" ->
                    ( { model
                        | score = ( 0, 1 )
                        , quizQas = latinPlantsQuiz
                        , remainingQuizQas = latinPlantsQuiz
                      }
                    , cmdNextQuestion latinPlantsQuiz
                    )

                _ ->
                    ( model, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    div [ class "container main-container" ]
        [ div [ class "form-group row m-1 mt-2" ]
            [ div [ class "col-8 p-0" ]
                [ select [ class "form-control form-control-sm", onInput ChangeQuiz ]
                    [ option [ value "BelgianBirds" ] [ text "Oiseaux de Belgique" ]
                    , option [ value "LatinBirds" ] [ text "Oiseaux (latin)" ]
                    , option [ value "BelgianPlants" ] [ text "Plantes de Belgique" ]
                    , option [ value "LatinPlants" ] [ text "Plantes (latin)" ]
                    ]
                ]
            , div [ class "col-4 p-0" ]
                [ select [ class "form-control  form-control-sm", onInput ChangeMode ]
                    [ option [ value "Infinite" ] [ text "Infini" ]
                    , option [ value "Exam" ] [ text "Examen" ]
                    , option [ value "Credits" ] [ text "Crédits" ]
                    ]
                ]
            ]
        , if model.gameState == DisplayCredits then
            viewCredits

          else
            div [ class "container p-0 m-0" ]
                [ div [ class "row" ]
                    [ div [ class "col py-2 px-3" ]
                        [ img
                            [ classList [ ( "img-h-230", True ), ( "d-none", not model.imgLoaded ) ]
                            , title model.currentQuizItem.qa.title
                            , src
                                (if model.gameState == Over then
                                    getGameOverImg model.gameOverRatio

                                 else
                                    model.currentQuizItem.qa.question
                              )
                            , onLoadSrc DisplayLoadedImg
                            ]
                            []
                        , img
                            [ classList [ ( "img-h-230", True ), ( "d-none", model.imgLoaded ) ]
                            , src "/assets/img/loader.svg"
                            ]
                            []
                        ]
                    ]
                , div [ classList [ ( "row", True ), ( "d-none", model.gameState == Over ) ] ]
                    (List.map
                        (\answer ->
                            div [ class "col-6 col-md-3 p-1 min-h-80" ]
                                [ div [ class "h-100" ]
                                    [ button
                                        [ class
                                            ("custom-btn btn btn-lg btn-block no-transition h-100"
                                                ++ (if not (model.gameState == WaitNext || model.gameState == Over) then
                                                        " btn-light"

                                                    else if answer == model.currentQuizItem.qa.answer then
                                                        " btn-success"

                                                    else if
                                                        answer
                                                            /= model.currentQuizItem.qa.answer
                                                            && answer
                                                            == model.chosenAnswer
                                                    then
                                                        " btn-danger"

                                                    else
                                                        " btn-light"
                                                   )
                                            )
                                        , disabled (model.gameState == WaitNext)
                                        , onClick (CheckAnswer answer)
                                        ]
                                        [ text answer ]
                                    ]
                                ]
                        )
                        model.currentQuizItem.answers
                    )
                , div [ class "row" ]
                    [ div [ class "col text-center p-3" ]
                        (case model.mode of
                            Infinite ->
                                [ if model.gameState == WaitNext then
                                    if model.hasWonLast then
                                        text "Bien joué !"

                                    else
                                        text "Perdu..."

                                  else
                                    text ""
                                ]

                            Exam ->
                                let
                                    score =
                                        String.fromInt (Tuple.first model.score) ++ "/" ++ String.fromInt model.examLimit
                                in
                                if model.gameState == Over then
                                    [ h2 [] [ text ("Final score : " ++ score) ]
                                    , p [] [ text (getGameOverSentence model.gameOverRatio) ]
                                    , button [ class "btn btn-primary d-block m-auto", onClick (ChangeMode "Exam") ] [ text "Recommencer" ]
                                    ]

                                else
                                    [ text ("Score : " ++ score) ]

                            Credits ->
                                [ text "" ]
                        )
                    ]
                ]
        ]


viewCredits : Html Msg
viewCredits =
    div [ class "row" ]
        [ div [ class "col" ]
            [ h1 [ class "mt-3" ] [ text "Autoquizz" ]
            , h2 []
                [ text "Par Loïc TRUCHOT - Étudiant "
                , a [ href "https://www.guides-nature.be/" ] [ text "CNB" ]
                ]
            , p []
                [ text "Licence Open Source et gratuite : "
                , a [ href "https://creativecommons.org/licenses/by-nc/4.0/" ] [ text "CC-BY-NC-4.0" ]
                ]
            , p [] [ text "Cette application est destinée aux étudiants CNB et aux curieux de la nature, pour les aider à se familiariser avec la faune et la flore de Belgique." ]
            , p []
                [ text "Toutes les illustrations ont pour source "
                , a [ href "https://www.wikipedia.org/" ] [ text "Wikipédia" ]
                , text "."
                ]
            , p []
                [ text "Le code source en "
                , a [ href "https://elm-lang.org/" ] [ text "Elm" ]
                , text " est disponible sur le "
                , a [ href "https://gitlab.committers.ngo/elm-generic-quiz/v1" ] [ text "GitLab de l'ASBL Committers" ]
                , text "."
                ]
            ]
        ]


onLoadSrc : (String -> msg) -> Html.Attribute msg
onLoadSrc tagger =
    on "load" (JD.map tagger targetSrc)


targetSrc : JD.Decoder String
targetSrc =
    JD.at [ "target", "src" ] JD.string
