module Main exposing (Model, Msg(..), init, main, update, view)

import Array
import ArrayHelper
import Browser
import Html exposing (Html, button, div, h1, h2, img, text)
import Html.Attributes exposing (class, disabled, src, title)
import Html.Events exposing (onClick, on)
import Quiz exposing (QuizItem, QuizQa, belgianBirdsQuiz, pickQuizQa)
import Time


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
    { quizQas : Array.Array QuizQa
    , remainingQuizQas : Array.Array QuizQa
    , currentQuizItem : QuizItem
    , status : String
    , waitNextQuestion : Bool
    , chosenAnswer : String
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { quizQas = belgianBirdsQuiz
      , remainingQuizQas = belgianBirdsQuiz
      , currentQuizItem =
            { qa = { question = "", answer = "", title = ""}
            , answers = []
            }
      , status = "Trouve la bonne réponse..."
      , waitNextQuestion = False
      , chosenAnswer = ""
      }
    , ArrayHelper.provideRandomElt DisplayNextQuestion belgianBirdsQuiz
    )



-- UPDATE


type Msg
    = DisplayNextQuestion Int
    | PickNextQuestion
    | CheckAnswer String
    | SetOtherAnswers (Array.Array QuizQa)
    | DisplayAnswers (Array.Array QuizQa)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        CheckAnswer answer ->
            let
                status =
                    if answer == model.currentQuizItem.qa.answer then
                        "Bien joué !"

                    else
                        "Perdu..."
            in
            ( { model
                | chosenAnswer = answer
                , status = status
                , waitNextQuestion = True
              }
            , Cmd.none
            )

        PickNextQuestion ->
            ( { model
                | waitNextQuestion = False
                , chosenAnswer = ""
                , status = ""
              }
            , ArrayHelper.provideRandomElt DisplayNextQuestion model.remainingQuizQas
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
                | currentQuizItem =
                    { item
                        | answers = Array.toList (Array.map (\qa -> qa.answer) arr)
                    }
              }
            , Cmd.none
            )



-- VIEW


view : Model -> Html Msg
view model =
    div [ class "container" ]
        [ div [ class "col" ]
            [ h1 []
                [ text "Oiseaux de Belgique" ]
            , h2 []
                [ text "Mode « infini »" ]
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
                                    ("btn-ws-normal btn btn-lg btn-block h-100"
                                        ++ (if not model.waitNextQuestion then
                                                " btn-light "

                                            else if answer == model.currentQuizItem.qa.answer then
                                                " btn-success"

                                            else
                                                " btn-danger"
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
            [ div [ class "col text-center p-3" ] [ text model.status ]
            ]
        ]
