module Page.Works exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)


view : Html msg
view =
    div [ id "page-works" ]
        [ h2 [] [ text "作ったもの" ]
        , p
            [ class "under-line" ]
            [ text "Applications" ]
        , section [ class "works-content" ]
            [ worksContent
                "https://github.com/k-nasa/HAPPY_BIRTHDAY_GINKO"
                "happy-birthday-ginko.png"
                "空銀子生誕祭2019非公式サイト"
                "りゅうおうのおしごとの空銀子さんの生誕祝サイトです"
                "2019/9/9"
            , worksContent
                "https://github.com/k-nasa/roa-typing"
                "roa-typing.png"
                "夢月ロア非公式タイピングゲーム"
                "夢月ロアさんの非公式タイピングゲームです。可愛らしい声をご堪能ください"
                "2019/8/6"
            , worksContent
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
                "https://github.com/k-nasa/line-book-bot"
                "line-book.jpg"
                "本通知line bot"
                "本の発売日を通知してくれるline bot"
                "2017/11/20"
            ]
        , p
            [ class "under-line" ]
            [ text "Tools" ]
        , section [ class "works-content" ]
            [ worksContent
                "https://github.com/k-nasa/rgh"
                "rgh.png"
                "rgh"
                "GitHub releaseへのバイナリアップロードが面倒くさいので、コマンドを叩くと、指定したディレクトリ配下のファイルがアップロードされるようにした。"
                "2019/11/20"
            , worksContent
                "https://github.com/k-nasa/goku"
                "goku.png"
                "goku"
                "HTTPサーバーの負荷計測ツールを作った。goku kamehameha コマンドでかめはめ波を撃ちサーバーにリクエストを投げる"
                "2019/11/20"
            , worksContent
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
            [ text "Contribute" ]
        , section [ class "works-content" ]
            [ contributeContent
                "https://github.com/async-rs/async-std/commits?author=k-nasa"
                "async-rs/async-std (member)"
                "たくさんPR送ってたらメンバーに誘われた。なのでメンバーになった。継続で気にPR送ったり、コードレビューをしている"
            , contributeContent
                "https://github.com/rust-lang/cargo/commits?author=k-nasa"
                "rust-lang/cargo"
                "オプションの追加や、ドキュメントの追加などを行っていた"
            , contributeContent
                "https://github.com/rustasync/tide/commits?author=k-nasa"
                "rustasync/tide"
                "ミドルウェアの実装や、機能追加PRを送っている"
            , contributeContent
                "https://github.com/rustasync/surf/commits?author=k-nasa"
                "rustasync/surf"
                "バグ修正や、機能追加PRを送っている"
            ]
        , p
            [ class "under-line" ]
            [ text "Slide" ]
        , section [ class "works-content" ]
            [ worksContent
                "https://gitpitch.com/k-nasa/sushi_lightning_by_hackz_vol.2"
                "goku_lt.png"
                "SUSHI LIGHTNIG by Hack'z Vol.2"
                "HTTPサーバーの負荷計測ツールを作った話をした。はじめて笑いを重視してLTをやった"
                "2019/11/17"
            , worksContent
                "https://gitpitch.com/k-nasa/fukuoka.rs-vol.1"
                "fukuoka_rs1.png"
                "fukuoka.rs-vol.1"
                "Rustのエラーハンドリング方法について話した"
                "2019/1/22"
            , worksContent
                "https://gitpitch.com/k-nasa/fukuoka.rs-vol.2"
                "fukuoka_rs2.png"
                "fukuoka.rs-vol.2"
                "Rustでwebアプリケーションを書いた話をしようとした。が作り始めるのが遅すぎてクソLTになった"
                "2019/2/29"
            , worksContent
                "https://gitpitch.com/k-nasa/fukuoka.rs-vol.3"
                "fukuoka_rs3.png"
                "fukuoka.rs-vol.3"
                "Rustのprocマクロについての話。Rust版Rspecを作ったのでそれに使用したproc_macro(構文拡張)について話した"
                "2019/4/23"
            , worksContent
                "https://gitpitch.com/k-nasa/isucon6_kannsousenn#/"
                "isucon_kansousen.png"
                "ネットワーク勉強会での飛び込みLT"
                "勉強会前日にisuconの過去問をやったのでどうやってスコアを上げていったかを話した。飛び込みということもあり内容は微妙"
                "2019/2/17"
            , worksContent
                "https://speakerdeck.com/nasa_desu/flutterhong-tutemita"
                "flutter_lt.png"
                "ITの難しいを簡単にする会#4"
                "はじめてのLTと言うこともあり感慨深いものがあります。緊張して全く話せなかった思い出です"
                "2018/6/27"
            , worksContent
                "https://speakerdeck.com/nasa_desu/self-intro"
                "self_intro.png"
                "サポーターズ1on1面談"
                "サポーターズの1on1面談で使った自己紹介スライド。時間は５分だったのに長々と話してしまった、、、"
                "2019/5/11"
            ]
        ]


worksContent : String -> String -> String -> String -> String -> Html msg
worksContent url imageName title description date =
    div [ class "content" ]
        [ a [ href url, class "link" ]
            [ img
                [ class "img"
                , src ("%PUBLIC_URL%/assets/images/" ++ imageName ++ "?nf_resize=smartcrop&w=280&h=200")
                ]
                []
            , p [ class "title" ] [ text title ]
            , p [ class "description" ] [ text description ]
            , p [ class "date" ] [ text date ]
            ]
        ]


contributeContent : String -> String -> String -> Html msg
contributeContent url title description =
    div [ class "content" ]
        [ a [ href url, class "link" ]
            [ p [ class "title" ] [ text title ]
            , p [ class "description" ] [ text description ]
            ]
        ]
