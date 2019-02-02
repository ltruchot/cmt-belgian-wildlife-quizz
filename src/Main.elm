module Main exposing (Model, Msg(..), init, main, update, view)

import Array exposing (Array)
import ArrayHelper
import Browser
import Html exposing (Html, button, div, h1, h2, img, label, option, select, text)
import Html.Attributes exposing (class, disabled, for, id, src, title, value)
import Html.Events exposing (on, onClick, onInput)
import Quiz exposing (QuizItem, QuizQa, belgianBirdsQuiz, pickQuizQa)
import Time


type Mode
    = Infinite
    | Exam


main =
    Browser.element
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }


subscriptions : Model -> Sub Msg
subscriptions model =
    if model.waitNextQuestion then
        Time.every 2000 (always PickNextQuestion)

    else
        Sub.none



-- MODEL


type alias Model =
    { quizQas : Array QuizQa
    , remainingQuizQas : Array QuizQa
    , currentQuizItem : QuizItem
    , status : String
    , waitNextQuestion : Bool
    , chosenAnswer : String
    , mode : Mode
    , score : Int
    , gameOver : Bool
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { quizQas = belgianBirdsQuiz
      , remainingQuizQas = belgianBirdsQuiz
      , currentQuizItem =
            { qa = { question = "", answer = "", title = "" }
            , answers = []
            }
      , status = "Trouve la bonne réponse..."
      , waitNextQuestion = False
      , chosenAnswer = ""
      , mode = Infinite
      , score = 0
      , gameOver = False
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
    | ChangeMode String


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        CheckAnswer answer ->
            let
                hasWon =
                    answer == model.currentQuizItem.qa.answer
            in
            ( { model
                | chosenAnswer = answer
                , status =
                    if hasWon then
                        "Bien joué !"

                    else
                        "Perdu..."
                , score =
                    if hasWon then
                        model.score + 1

                    else
                        model.score
                , waitNextQuestion = True
                , gameOver = Array.length model.remainingQuizQas == Array.length model.quizQas
              }
            , Cmd.none
            )

        PickNextQuestion ->
            ( { model
                | waitNextQuestion = False
                , chosenAnswer = ""
                , status = ""
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
                | gameOver = False
                , score =
                    if model.gameOver then
                        0

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
                    { model | remainingQuizQas = model.quizQas }
            in
            case mode of
                "Infinite" ->
                    ( { newModel
                        | mode = Infinite
                        , status = "Trouve la bonne réponse..."
                      }
                    , cmdNextQuestion newModel.remainingQuizQas
                    )

                "Exam" ->
                    ( { newModel
                        | mode = Exam
                        , score = 0
                      }
                    , cmdNextQuestion newModel.remainingQuizQas
                    )

                _ ->
                    ( newModel, cmdNextQuestion newModel.remainingQuizQas )



-- VIEW


view : Model -> Html Msg
view model =
    div [ class "container" ]
        [ h1 [] [ text "Oiseaux de Belgique" ]
        , div [ class "form-group row m-0" ]
            [ label
                [ for "mode"
                , class "col-3 col-form-label"
                ]
                [ text "Mode :" ]
            , div [ class "col-9" ]
                [ select [ class "form-control", id "mode", onInput ChangeMode ]
                    [ option [ value "Infinite" ] [ text "Infini" ]
                    , option [ value "Exam" ] [ text "Examen" ]
                    ]
                ]
            ]
        , div [ class "row" ]
            [ div [ class "col p-3" ]
                [ img
                    [ class "img-h-250"
                    , title model.currentQuizItem.qa.title
                    , let
                        imgSrc =
                            model.currentQuizItem.qa.question
                      in
                      src
                        (if imgSrc /= "" then
                            imgSrc

                         else
                            "assets/img/loading.gif"
                        )
                    ]
                    []
                ]
            ]
        , div [ class "row" ]
            (List.map
                (\answer ->
                    div [ class "col-6 col-md-3 p-1 min-h-80" ]
                        [ div [ class "h-100" ]
                            [ button
                                [ class
                                    ("custom-btn btn btn-lg btn-block no-transition h-100"
                                        ++ (if not model.waitNextQuestion then
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
                                , disabled model.waitNextQuestion
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
                [ text
                    (if model.mode == Infinite then
                        model.status

                     else
                        (if model.gameOver then
                            "Final score : "

                         else
                            "Score : "
                        )
                            ++ String.fromInt model.score
                            ++ "/"
                            ++ String.fromInt (Array.length model.quizQas)
                    )
                ]
            ]
        ]
