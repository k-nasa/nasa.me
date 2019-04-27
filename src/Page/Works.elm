module Page.Works exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)


view : Html msg
view =
    div [ id "page-works" ]
        [ h2 [] [ text "作ったもの" ]
        , p
            [ class "under-line" ]
            [ text "Application" ]
        , section [ class "works-content" ]
            [ worksContent
                "https://github.com/k-nasa/nasa.me"
                "second-portfolio.png"
                "ポートフォリオサイト弐号機"
                "このサイトです。 Elmで頑張って作った"
                "2019/3/26"
            , worksContent
                "https://github.com/k-nasa/nasa.me-first"
                "first-portfolio.png"
                "ポートフォリオサイト初号機"
                "ポートフォリオサイト初号機です。 Reactで頑張って作った"
                "2018/10/10"
            , worksContent
                "https://github.com/Akidsuki/trunk_beacon"
                "trunk_hackathon.png"
                "飯テロボット"
                "LINE beconを利用して、近くにいる人に飯テロ画像を送りつけるアプリ。 TrunkハッカソンでLINEさんからLINE賞をもらいました"
                "2019/3/17"
            , worksContent
                "https://github.com/k-nasa/lolo"
                "lolo.png"
                "インタプリタ言語"
                "Rustで書いたインタプリタ。"
                "2018/11/25"
            , worksContent
                "https://github.com/k-nasa/BoonoMobile"
                "boono.png"
                "Boono"
                "購読しているマンガ・ラノベの新着本がでたら通知するアプリ"
                "2018/8/20"
            , worksContent
                "https://github.com/k-nasa/reservation_app"
                "reservation.png"
                "予約システム"
                "ファイナンシャルプランナーに予約するためのwebアプリ"
                "2018/3/20"
            , worksContent
                "https://github.com/k-nasa/line-book-bot"
                "line-book.jpg"
                "本通知line bot"
                "本の発売日を通知してくれるline bot"
                "2017/11/20"
            ]
        , p
            [ class "under-line" ]
            [ text "Contribute" ]
        , section [ class "works-content" ]
            [ worksContent
                "https://github.com/rust-lang/cargo"
                "cargo.png"
                "rust-lang/cargo"
                "RustのパッケージマネージャのCargoにパッチを投げた"
                "2018/12/10"
            , worksContent
                "https://github.com/rust-lang/rustup.rs"
                "rust.up.png"
                "rust-lang/rustup.rs"
                "Rustのツールチェインインストーラーに超細かいリファクタリングを投げた"
                "2019/1/14"
            , worksContent
                "https://github.com/kriomant/mockers"
                "mockers.png"
                "kriomant/mockers"
                "Rustのモックライブラリに超細かいパッチを投げた"
                "2019/1/26"
            , worksContent
                "https://github.com/autozimu/LanguageClient-neovim"
                "language_client.png"
                "autozimu/LanguageClient"
                "neovim用language server clientにリファクタPR投げた"
                "2019/3/2"
            ]
        , p
            [ class "under-line" ]
            [ text "Tool" ]
        , section [ class "works-content" ]
            [ worksContent
                "https://github.com/k-nasa/ai-chan"
                "ai_chan.png"
                "ai-chann"
                "GitHubでの作業を楽にするボット。画像のようにレビュワーのオートアサインやラベル追加、マージ後のブランチ削除などをやってくれる可愛い子"
                "2019/2/9"
            , worksContent
                "https://github.com/k-nasa/ruspec"
                "ruspec.png"
                "ruspec"
                "RustでRspec構文のテストを書けるようにするためのライブラリ"
                "2019/3/11"
            , worksContent
                "https://github.com/k-nasa/choco_sable"
                "gbranch.png"
                "choco sable"
                "gitブランチの切り替え,削除をインクリメンタルサーチを用いて行うためのツール"
                "2019/1/13"
            , worksContent
                "https://github.com/k-nasa/contriview"
                "contriview.png"
                "contriview"
                "GitHubのContributions数をコマンドラインから見るツール。月間、週間、今日、過去１年分のContribution数を出します"
                "2019/2/11"
            , worksContent
                "https://github.com/k-nasa/menbei"
                "menbei.png"
                "menbei"
                "issueの起票リンクを簡単に生成するツール。画像のようにタイトル、description,assignee,labelの初期値のセットされたリンクを簡単に生成する"
                "2019/2/11"
            , worksContent
                "https://github.com/k-nasa/rmemo"
                "rmemo.png"
                "rmemo"
                "コマンドラインでぱぱっとメモの作成、grep検索、編集をするためのツール。いい感じにブラウザ上でプレビューできたりする"
                "2018/10/11"
            ]
        , p
            [ class "under-line" ]
            [ text "Slide" ]
        ]


worksContent : String -> String -> String -> String -> String -> Html msg
worksContent url imageName title description date =
    div [ class "content" ]
        [ a [ href url, class "link" ]
            [ img
                [ class "img"
                , src ("%PUBLIC_URL%/assets/images/" ++ imageName)
                ]
                []
            , p [ class "title" ] [ text title ]
            , p [ class "description" ] [ text description ]
            , p [ class "date" ] [ text date ]
            ]
        ]
