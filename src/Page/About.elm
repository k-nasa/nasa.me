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
            [ p [ class "under-line" ] [ text "自己紹介" ]
            , table [ class "table" ]
                [ tbody []
                    [ tableRow "性別" "男"
                    , tableRow "ひとこと" "isuconとRustが好き"
                    , tableRow "誕生日" "1998/11/15 現在20歳"
                    , tableRow "好きな作品" "シュタインズゲート、宇宙よりも遠い場所、ラブライブ、コードギアス反逆のルルーシュ、りゅうおうのおしごと、妹さえいればいい"
                    , tableRow "使ったことある技術" "Rust, Ruby, Flutter, React, Go"
                    , tableRow "好きな食べ物" "スリランカカレー"
                    , tableRow "嫌いなもの" "アボカド,ビール (マジでこれだけは無理)"
                    , tableRow "好きなイラストレーター様" "しらび、カントク、深崎暮人、えれっと、Tota, そふら"
                    ]
                ]
            ]
        ]


tableRow : String -> String -> Html msg
tableRow head body =
    tr []
        [ th [] [ text head ]
        , td [] [ text body ]
        ]
