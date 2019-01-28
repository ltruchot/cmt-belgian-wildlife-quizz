module Main exposing (Model, Msg(..), QuizItem, init, main, update, view)

import Array exposing (Array)
import ArrayHelper
import Browser
import Html exposing (Html, button, div, p, text)
import Html.Events exposing (onClick)
import Quiz exposing (QuizQa, periodicTable)


type alias QuizItem =
    { qa : QuizQa
    , answers : List String
    }


pickQuizQa : Int -> Array QuizQa -> Array QuizQa -> ( QuizItem, Array QuizQa )
pickQuizQa randomIdx qas allQas =
    let
        ( qa, remainingQas ) =
            ArrayHelper.sliceByIndex qas randomIdx
    in
    ( { qa = Maybe.withDefault ( "Question", "Answer" ) qa
      , answers = []
      }
    , remainingQas
    )


main =
    Browser.element
        { init = init
        , update = update
        , subscriptions = \_ -> Sub.none
        , view = view
        }



-- MODEL


type alias Model =
    { quizQas : Array QuizQa
    , remainingQuizQas : Array QuizQa
    , currentQuizItem : QuizItem
    , status : String
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { quizQas = periodicTable
      , remainingQuizQas = periodicTable
      , currentQuizItem =
            { qa = ( "Question", "Answer" )
            , answers = []
            }
      , status = "Try this quizz."
      }
    , ArrayHelper.provideRandomElt DisplayNextQuestion periodicTable
    )



-- UPDATE


type Msg
    = DisplayNextQuestion Int
    | CheckAnswer String
    | SetOtherAnswers (Array QuizQa)
    | DisplayAnswers (Array QuizQa)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
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
            , ArrayHelper.provideShuffled SetOtherAnswers (Array.filter (\val -> (Tuple.first val) /= (Tuple.first chosen.qa)) model.quizQas)
            )

        CheckAnswer answer ->
            let
                status =
                    if answer == (Tuple.second model.currentQuizItem.qa) then
                        "Bravo"

                    else
                        "Wrong"
            in
            ( { model | status = status }, ArrayHelper.provideRandomElt DisplayNextQuestion model.remainingQuizQas )

        SetOtherAnswers arr ->
          let
              item = model.currentQuizItem
              others = Array.slice 0 3 arr
          in
        
            (model
            , ArrayHelper.provideShuffled DisplayAnswers (Array.push item.qa others))

        DisplayAnswers arr ->
          let
              item = model.currentQuizItem
          in
        
            ({ model
                | currentQuizItem =
                    { item
                        | answers = Array.toList (Array.map Tuple.second arr)
                    }
            }, Cmd.none)



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ p [] [ text (Tuple.first model.currentQuizItem.qa) ]
        , div []
            (List.map
                (\answer -> button [ onClick (CheckAnswer answer) ] [ text answer ])
                model.currentQuizItem.answers
            )
        , p [] [ text model.status ]
        ]
