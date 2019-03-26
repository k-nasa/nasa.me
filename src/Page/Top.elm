module Page.Top exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)


view : Html msg
view =
    div [ id "page-top" ]
        [ text "hello top" ]
