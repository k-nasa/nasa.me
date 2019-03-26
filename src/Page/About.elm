module Page.About exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


view : Html msg
view =
    div [ id "page-about" ]
        [ -- 名前とアイコン
          section [ class "profile-icon-section" ]
            [ img
                [ src "%PUBLIC_URL%/assets/images/icon.jpg"
                , class "profile-icon"
                ]
                []
            , h1 [ class "name" ] [ text "nasa" ]
            ]

        -- 自己紹介文
        , section [ class "about-me-text" ]
            [ p [ class "under-line" ] [ text "どんな人?" ]
            , text "福岡出身のWebプログラマー。"
            , br [] []
            , text "妹を渇望していて、募集してみたが"
            , br [] []
            , text "名乗りを上げたものは男のみだったので絶望した。"
            ]

        -- 自己紹介表
        , section [ class "about-me-table" ]
            [ p [ class "under-line" ] [ text "僕を分解すると" ]
            , table [ class "table" ]
                [ tbody []
                    [ tr []
                        [ th [] [ text "hoge" ]
                        , td [] [ p [] [ text "" ] ]
                        ]
                    ]
                ]
            ]
        ]
