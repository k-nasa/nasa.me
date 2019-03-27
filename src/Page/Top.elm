module Page.Top exposing (Model, Msg, init, update, view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


type alias Model =
    { openMenue : Bool }


type Msg
    = OpenMenue


init : Model
init =
    -- FIXME ダサいアイコンしか無いので最初から開く
    Model True


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        OpenMenue ->
            ( { model | openMenue = True }, Cmd.none )


view : Model -> Html Msg
view model =
    div [ id "page-top" ]
        [ div [ class "animation-entrypoint" ]
            [ div [] []
            , div [] []
            , div [] []
            , div [] []
            ]
        , div [ class "page-content" ]
            [ div [ class "title-text" ]
                [ div [ class "title" ] [ text "Hey, Universe" ]
                , div [ class "sub-title" ] [ text "I'm nasa" ]
                ]
            , case model.openMenue of
                True ->
                    div [ class "menue-wrapper" ]
                        [ div [ class "menue" ]
                            [ a [ href "about" ] [ text "about" ]
                            , a [ href "works" ] [ text "works" ]
                            , a [ href "contact" ] [ text "contact" ]
                            ]
                        ]

                False ->
                    div
                        [ class "site-icon button"
                        , onClick OpenMenue
                        ]
                        [ text "MENUE" ]
            ]
        ]
