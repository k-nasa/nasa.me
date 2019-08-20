module Main exposing (main)

import Browser
import Browser.Navigation as Nav
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Page.About
import Page.Contact
import Page.Top
import Page.Works
import Process
import Route exposing (..)
import Task exposing (Task)
import Url


main : Program () Model Msg
main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = \model -> Sub.none
        , onUrlChange = UrlChanged
        , onUrlRequest = LinkClicked
        }


init : () -> Url.Url -> Nav.Key -> ( Model, Cmd Msg )
init _ url key =
    Model key (TopPage Page.Top.init) False
        |> goTo (Route.parse url)



-- MODEL


type alias Model =
    { key : Nav.Key
    , page : Page
    , onAnimation : Bool
    }


type Page
    = NotFound
    | TopPage Page.Top.Model
    | AboutPage
    | WorksPage
    | ContactPage


type Msg
    = LinkClicked Browser.UrlRequest
    | UrlChanged Url.Url
    | TopMsg Page.Top.Msg
    | Sleep String
    | SleepFinish String



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Sleep url ->
            ( { model | onAnimation = True }, Task.perform SleepFinish (loadAnimation url) )

        SleepFinish url ->
            ( { model | onAnimation = False }, Nav.pushUrl model.key url )

        LinkClicked urlRequest ->
            case urlRequest of
                Browser.Internal url ->
                    ( model, Nav.pushUrl model.key (Url.toString url) )

                Browser.External href ->
                    ( model, Nav.load href )

        UrlChanged url ->
            goTo (Route.parse url) model

        TopMsg topMsg ->
            case model.page of
                TopPage topModel ->
                    let
                        ( newTopModel, topCmd ) =
                            Page.Top.update topMsg topModel
                    in
                    ( { model | page = TopPage newTopModel }
                    , Cmd.map TopMsg topCmd
                    )

                _ ->
                    ( model, Cmd.none )


loadAnimation : url -> Task x url
loadAnimation url =
    Process.sleep 800
        |> Task.map (always url)


goTo : Maybe Route -> Model -> ( Model, Cmd Msg )
goTo maybeRoute model =
    case maybeRoute of
        Nothing ->
            ( { model | page = NotFound }, Cmd.none )

        Just Route.Top ->
            ( { model | page = TopPage Page.Top.init }
            , Cmd.none
            )

        Just Route.About ->
            ( { model | page = AboutPage }, Cmd.none )

        Just Route.Works ->
            ( { model | page = WorksPage }, Cmd.none )

        Just Route.Contact ->
            ( { model | page = ContactPage }, Cmd.none )


view : Model -> Browser.Document Msg
view model =
    { title = "nasa.me"
    , body =
        [ case model.page of
            NotFound ->
                text "NotFound"

            TopPage topPageModel ->
                Page.Top.view topPageModel
                    |> Html.map TopMsg

            AboutPage ->
                addHeaderLinks Page.About.view model

            WorksPage ->
                addHeaderLinks Page.Works.view model

            ContactPage ->
                addHeaderLinks Page.Contact.view model
        ]
    }


addHeaderLinks : Html Msg -> Model -> Html Msg
addHeaderLinks html model =
    div []
        [ div [ class "header-menue-wrapper" ]
            [ ul [ class "header-menue" ]
                [ li [ class "top-link" ] [ span [ onClick (Sleep "/") ] [ text "Top" ] ]
                , li [] [ span [ class (addActiveClass AboutPage model), onClick (Sleep "/about") ] [ text "About" ] ]
                , li [] [ span [ class (addActiveClass WorksPage model), onClick (Sleep "/works") ] [ text "Works" ] ]
                , li [] [ span [ class (addActiveClass ContactPage model), onClick (Sleep "/contact") ] [ text "Contact" ] ]
                ]
            ]
        , div [ class (animationClass model) ] [ html ]
        ]


addActiveClass : Page -> Model -> String
addActiveClass page model =
    if page == model.page then
        "active"

    else
        ""


animationClass : Model -> String
animationClass model =
    if model.onAnimation then
        "animation-start"

    else
        ""
