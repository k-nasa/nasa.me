module Main exposing (main)

import Browser
import Browser.Navigation as Nav
import Html exposing (..)
import Html.Attributes exposing (..)
import Page.About
import Page.Contact
import Page.Top
import Page.Works
import Route exposing (..)
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
init flags url key =
    Model key (TopPage Page.Top.init)
        |> goTo (Route.parse url)



-- MODEL


type alias Model =
    { key : Nav.Key
    , page : Page
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



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
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
                addHeaderLinks Page.About.view

            WorksPage ->
                addHeaderLinks Page.Works.view

            ContactPage ->
                addHeaderLinks Page.Contact.view
        ]
    }


addHeaderLinks : Html msg -> Html msg
addHeaderLinks html =
    div []
        [ div [ class "header-menue-wrapper" ]
            [ ul [ class "header-menue" ]
                [ li [ class "top-link" ] [ a [ href "/" ] [ text "Top" ] ]
                , li [] [ a [ href "/about" ] [ text "About" ] ]
                , li [] [ a [ href "/works" ] [ text "Works" ] ]
                , li [] [ a [ href "/contact" ] [ text "Contact" ] ]
                ]
            ]
        , html
        ]
