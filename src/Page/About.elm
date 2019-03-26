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
                    [ tr []
                        [ th [] [ text "性別" ]
                        , td [] [ p [] [ text "漢(おとこ)" ] ]
                        ]
                    , tr []
                        [ th [] [ text "ひとこと" ]
                        , td [] [ text "isuconとRustとvimが好き" ]
                        ]
                    , tr []
                        [ th [] [ text "誕生日" ]
                        , td [] [ text "1998/11/15 現在20歳" ]
                        ]
                    , tr []
                        [ th [] [ text "好きな作品" ]
                        , td [] [ text "シュタインズゲート、宇宙よりも遠い場所、ラブライブ、コードギアス反逆のルルーシュ、りゅうおうのおしごと、妹さえいればいい" ]
                        ]
                    , tr []
                        [ th [] [ text "好きな技術" ]
                        , td [] [ text "Rust, Elm, Flutter, PWA, Git, vlangが気になっている" ]
                        ]
                    , tr []
                        [ th [] [ text "好きな食べ物" ]
                        , td [] [ text "スリランカカレー" ]
                        ]
                    , tr []
                        [ th [] [ text "嫌いなもの" ]
                        , td [] [ text "アボカド (マジでこれだけは無理)" ]
                        ]
                    , tr []
                        [ th [] [ text "好きなイラストレーター様" ]
                        , td [] [ text "しらび、カントク、深崎暮人" ]
                        ]
                    ]
                ]
            ]
        ]
