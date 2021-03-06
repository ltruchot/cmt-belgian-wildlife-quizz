module Main exposing (Model, Msg(..), init, main, update, view)
import Array exposing (Array)
import ArrayHelper
import Browser
import FHelper
import Html exposing (Html, a, button, div, h1, h2, img, option, p, select, text)
import Html.Attributes exposing (class, classList, disabled,  href, src, title, type_, value, selected)
import Html.Events exposing (on, onClick, onInput)
import Json.Decode as JD
import List.Extra as ListExtra
import Quiz exposing (DisplayableQuiz, GameOverMsgs, QuizItem, QuizOptions, QuizQa, emptyDisplayableQuiz, emptyQuizItem, pickQuizQa)
import Time
import BelgianWildlife exposing (vernacularQuizzList, binominalQuizzList)

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


getGameOverImg : GameOverRatio -> QuizOptions -> String
getGameOverImg ratio options =
    "/assets/img/"
        ++ options.folder
        ++ "/resized/"
        ++ options.prefix
        ++ "_"
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


getGameOverSentence : GameOverRatio -> GameOverMsgs -> String
getGameOverSentence ratio msgs =
    case ratio of
        Sad ->
            msgs.sad

        Neutral ->
            msgs.neutral

        Happy ->
            msgs.happy

        Proud ->
            msgs.proud


allQuizz : List (List DisplayableQuiz)
allQuizz = [vernacularQuizzList, binominalQuizzList]


selectQuizzList : List (List DisplayableQuiz) -> Int -> List DisplayableQuiz
selectQuizzList all index = 
    Maybe.withDefault
        []
        (ListExtra.getAt index all)

selectFirstQuiz : List DisplayableQuiz -> DisplayableQuiz
selectFirstQuiz list  =
    Maybe.withDefault
        emptyDisplayableQuiz
        (ListExtra.getAt 0 list)


defaultQuizzList : List DisplayableQuiz
defaultQuizzList  = selectQuizzList allQuizz 0

defaultQuizz : DisplayableQuiz
defaultQuizz = selectFirstQuiz defaultQuizzList

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
    { quizz : List (List DisplayableQuiz)
    , quizzListIndex : Int
    , selectedQuizList : List DisplayableQuiz
    , chosenQuizName : String
    , quizQas : Array QuizQa
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
    , options : QuizOptions
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { quizz = allQuizz
      , quizzListIndex = 0
      , selectedQuizList = defaultQuizzList
      , chosenQuizName = defaultQuizz.uniqName
      , quizQas = defaultQuizz.qas
      , remainingQuizQas = defaultQuizz.qas
      , currentQuizItem = emptyQuizItem
      , chosenAnswer = ""
      , mode = Infinite
      , score = ( 0, 1 )
      , imgLoaded = False
      , hasWonLast = False
      , gameState = Start
      , examLimit = 20
      , gameOverRatio = Neutral
      , options = defaultQuizz.options
      }
    , cmdNextQuestion defaultQuizz.qas
    )


cmdNextQuestion : Array QuizQa -> Cmd Msg
cmdNextQuestion qas =
    ArrayHelper.provideRandomElt DisplayNextQuestion qas


setQuiz : Model -> DisplayableQuiz -> ( Model, Cmd Msg )
setQuiz model displayableQuiz =
    ( { model
        | quizQas = displayableQuiz.qas
        , remainingQuizQas = displayableQuiz.qas
        , options = displayableQuiz.options
        , chosenQuizName = displayableQuiz.uniqName
      }
    , cmdNextQuestion displayableQuiz.qas
    )



-- UPDATE


type Msg
    = DisplayNextQuestion Int
    | PickNextQuestion
    | CheckAnswer String
    | SetOtherAnswers (Array QuizQa)
    | DisplayAnswers (Array QuizQa)
    | DisplayLoadedImg String
    | NextQuizzList
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
                , gameState = WaitNext
                , gameOverRatio = calculateGameOverRatio score
              }
            , Cmd.none
            )

        PickNextQuestion ->
            if
                Tuple.second model.score
                    == model.examLimit
                    && model.mode
                    == Exam
            then
                ( { model
                    | gameState = Over
                  }
                , Cmd.none
                )

            else
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

        NextQuizzList ->
            let
                lenght = List.length model.quizz
                newIndex = 
                    if model.quizzListIndex + 1 < lenght 
                    then model.quizzListIndex + 1
                    else 0
                newQuizzList = selectQuizzList model.quizz newIndex
                newQuizz = selectFirstQuiz newQuizzList
                newModel = { model | 
                        quizzListIndex = newIndex
                        , score = ( 0, 1 )
                        , gameState = Start
                        , selectedQuizList = newQuizzList
                    }
            in
            setQuiz newModel newQuizz


        ChangeMode mode ->
            let
                newModel =
                    { model | 
                        remainingQuizQas = model.quizQas, 
                        gameState = Start 
                    }
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

        ChangeQuiz quizName ->
            let
                newModel =
                    { model | score = ( 0, 1 ), gameState = Start }

                setNewQuiz =
                    setQuiz newModel

                displaybleQuiz =
                    Maybe.withDefault
                        emptyDisplayableQuiz
                        (ListExtra.find
                            (\quiz -> quiz.uniqName == quizName)
                            model.selectedQuizList
                        )
            in
            setNewQuiz displaybleQuiz



-- VIEW


view : Model -> Html Msg
view model =
    div [ class "container main-container" ]
        [ div [ class "form-group row m-1 mt-2" ]
            [ div [ class "col-7 p-0" ]
                [ select [ class "form-control form-control-sm", onInput ChangeQuiz ]
                    (List.map (\quiz -> 
                        option [ value quiz.uniqName, selected (model.chosenQuizName == quiz.uniqName)] 
                            [ text quiz.visibleName ]
                        ) model.selectedQuizList)
                ]
            , div [ class "col-5 p-0" ]
                [ div [ class "input-group input-group-sm" ]
                    [ select [ class "custom-select", onInput ChangeMode ]
                        [ option [ value "Infinite" ] [ text "Infini" ]
                        , option [ value "Exam" ] [ text "Examen" ]
                        , option [ value "Credits" ] [ text "Crédits" ]
                        ]
                    , div [ class "input-group-append" ]
                        [ button [ type_ "button", class "btn btn-outline-info", onClick NextQuizzList ]
                            [ text (if model.quizzListIndex == 0 then "Ω" else "a") ]
                        ]
                    ]
                ]
            ]
        , if model.gameState == DisplayCredits then
            viewCredits

          else
            div [ class "container p-0 m-0" ]
                [ div [ class "row" ]
                    [ div [ class "col py-2 px-3 img-container" ]
                        [ img
                            [ classList [ ( "img-h-230", True ), ( "d-none", not model.imgLoaded ) ]
                            , title model.currentQuizItem.qa.title
                            , src
                                (if model.gameState == Over then
                                    getGameOverImg model.gameOverRatio model.options

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
                                    , p [] [ text (getGameOverSentence model.gameOverRatio model.options.gameOverMsgs) ]
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
                , a [ href "https://github.com/ltruchot/cmt-belgian-wildlife-quizz" ] [ text "github/ltruchot" ]
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
