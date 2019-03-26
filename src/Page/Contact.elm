module Page.Contact exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)


view : Html msg
view =
    div [ id "page-contact" ]
        [ h1 [] [ text "Contact" ] ]
