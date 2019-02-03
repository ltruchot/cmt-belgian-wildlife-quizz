module Main exposing (Model, Msg(..), init, main, update, view)

import Array exposing (Array)
import ArrayHelper
import Browser
import FHelper
import Html exposing (Html, button, div, h1, h2, img, label, option, select, text)
import Html.Attributes exposing (class, disabled, for, id, src, title, value)
import Html.Events exposing (on, onClick, onInput)
import Json.Decode as JD
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
    , imgLoaded : Bool
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
      , imgLoaded = False
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
    | DisplayLoadedImg String


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
            in
            ( { model
                | chosenAnswer = answer
                , status =
                    if hasWon then
                        "Bien joué !"

                    else
                        "Perdu..."
                , score = FHelper.ifThen hasWon ((+) 1) model.score
                , waitNextQuestion = True
                , gameOver = Array.length model.remainingQuizQas == Array.length model.quizQas
              }
            , Cmd.none
            )

        PickNextQuestion ->
            let
                item =
                    model.currentQuizItem

                qa =
                    model.currentQuizItem.qa
            in
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
    div [ class "container main-container" ]
        [ div [ class "form-group row m-1 mt-2" ]
            [ div [ class "col-8 p-0" ]
                [ select [ class "form-control form-control-sm" ]
                    [ option [ value "BelgianBirds" ] [ text "Oiseaux de Belgique" ]
                    ]
                ]
            , div [ class "col-4 p-0" ]
                [ select [ class "form-control  form-control-sm", onInput ChangeMode ]
                    [ option [ value "Infinite" ] [ text "Infini" ]
                    , option [ value "Exam" ] [ text "Examen" ]
                    ]
                ]
            ]
        , div [ class "row" ]
            [ div [ class "col p-3" ]
                [ img
                    [ class
                        ("img-h-230"
                            ++ (if model.imgLoaded then
                                    " d-block"

                                else
                                    " d-none"
                               )
                        )
                    , title model.currentQuizItem.qa.title
                    , let
                        imgSrc =
                            model.currentQuizItem.qa.question
                      in
                      src imgSrc
                    , onLoadSrc DisplayLoadedImg
                    ]
                    []
                , img
                    [ class
                        ("img-h-230"
                            ++ (if not model.imgLoaded then
                                    " d-block"

                                else
                                    " d-none"
                               )
                        )
                    , src "/assets/img/loader.svg"
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


onLoadSrc : (String -> msg) -> Html.Attribute msg
onLoadSrc tagger =
    on "load" (JD.map tagger targetSrc)


targetSrc : JD.Decoder String
targetSrc =
    JD.at [ "target", "src" ] JD.string
