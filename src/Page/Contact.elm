module Page.Contact exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)


view : Html msg
view =
    div [ id "page-contact" ]
        [ h1 [] [ text "Contact" ]
        , p [] [ text "何かあればTwitterDMもしくはmail@k-nasa.meまでご連絡ください。" ]
        , ul [ class "links" ]
            [ li []
                [ a [ href "https://twitter.com/nasa_desu" ]
                    [ i [ class "fab fa-twitter" ] []
                    ]
                ]
            , li
                []
                [ a [ href "https://github.com/k-nasa" ]
                    [ i [ class "fab fa-github" ] []
                    ]
                ]
            , li
                []
                [ a [ href "https://nasaemon.hateblo.jp/" ]
                    [ i [ class "fas fa-edit" ] []
                    ]
                ]
            , li
                []
                [ a [ href "https://www.facebook.com/nasa.x68" ]
                    [ i [ class "fab fab fa-facebook-f" ] []
                    ]
                ]
            ]
        ]
