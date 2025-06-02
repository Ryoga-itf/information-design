#import "@preview/cades:0.3.0": qr-code

#set document(author: (), title: "情報デザインII 第6週課題")

// A3
#set page(
  width: 420mm,
  height: 297mm,
  margin: (x: 0mm, y: 0mm),
)

#set text(lang: "ja")

#place(
  top + left,
  box(
    width: 100%,
    height: 100%,
  )[
    #image(
      width: 100%,
      "assets/images/fow.jpg",
    )
    #place(
      top + left,
      box(
        width: 100%,
        height: 100%,
        fill: rgb(0, 0, 0, 80),
      )
    )
    #place(
      top + right,
      dx: -10mm,
      dy: 5mm,
      image(
        width: 35mm,
        "assets/images/logo2.png",
      ),
    )
    #place(
      bottom + right,
      dx: -10mm,
      dy: -20mm,
      image(
        width: 80mm,
        "assets/images/fog_map.png",
      ),
    )
    #place(
      bottom + left,
      dx: 10mm,
      dy: -19mm - 55mm,
      text(
        fill: rgb(255, 255, 255, 200),
        size: 180pt,
        font: "DIN 2014",
        weight: "regular",
        tracking: -7pt,
        spacing: 0.175em,
      )[FOG #text(weight: "extralight", tracking: -10pt)[OF] WORLD],
    )
    #place(
      bottom + left,
      dx: 13mm,
      dy: -74mm - 55mm,
      align(
        horizon,
        stack(
          dir: ltr,
          spacing: 14mm,
          text(
            fill: rgb(255, 255, 255, 200),
            size: 63.5pt,
            font: "TsukuhouMincho",
            weight: "bold",
            cjk-latin-spacing: none,
          )[
            #align(
              bottom,
              stack(
                dir: ltr,
                spacing: -5pt,
                text(tracking: -4pt)[世界],
                text(tracking: -1pt, size: 0.8em)[を],
                text(tracking: -2pt)[探検],
                text(tracking: -10pt, size: 0.8em)[しよう、],
                text(tracking: -2pt)[記録],
                text(tracking: -10pt, size: 0.8em)[しよう],
              ) // NOTE: 中途半端なジャンプ率ではなく、もう少しメリハリをつける
            )
          ],
        ),
      )
    ),
    #place(
      bottom + left,
      dx: 13mm,
      dy: -50mm,
      box(
        width: 304mm,
        par(
          leading: 0.95em,
          text(
            font: ("Yaku Han JP", "Hiragino Kaku Gothic ProN"),
            size: 14.68pt,
            fill: white,
          )[
            旅するたびに灰色の霧が晴れ、軌跡が世界地図に彩りを加える。
            あなたが歩いた一歩一歩が線となり、唯一無二のアートを描き出す
            それが「世界の霧」……
            さあ、地図に刻み、一歩一歩の足跡を目で追えるように描き出そう。
            あなたはどこにも縛られないから。
          ],
        ), // NOTE: 文字数を増やす、文字サイズを 9pt とかくらいに落として二段組にする
      ),
    )
  ],
)

#place(
  bottom + left,
  dy: -5mm,
  box(
    width: 100%,
    height: 50mm,
  )[
    #place(
      horizon,
      dx: 11mm,
      box(height: 18mm)[
        #stack(
          dir: ltr,
          spacing: 41mm,
          stack(
            dir: ltr,
            spacing: 11mm,
            stack(
              dir: ltr,
              spacing: 7.5mm,
              image("assets/images/fogofworld_app_icon.svg"),
              box(height: 63%)[
                #image("assets/images/fogofworld_title.svg")
              ],
            ),
            stack(
              dir: ltr,
              image(
                width: 50mm,
                "assets/images/download-appstore.png",
              ),
              image(
                width: 50mm,
                "assets/images/download-googleplay.png",
              ),
            ),
          ),
          stack(
            dir: ltr,
            spacing: 5mm,
            par(
              text(
                font: ("Yaku Han JP", "Hiragino Kaku Gothic ProN"),
                size: 14.5pt,
                fill: white,
              )[
                https://fogofworld.app
              ],
            ),
            qr-code(
              width: 12mm,
              color: white,
              background: rgb(0, 0, 0, 0),
              "https://fogofworld.app/"
            ),
          )
        )
      ],
    )
  ],
)


#place(
  bottom + left,
  dx: 11mm,
  dy: -7mm,
  box(
    width: 100% - 25mm,
    text(
      font: ("Yaku Han JP", "Hiragino Kaku Gothic ProN"),
      size: 7pt,
      fill: white,
    )[
      ※ 商標について: 「App Store」 は Apple Inc. の商標です。「Google Play」 は Google LLC. の商標です。
      ※ 何らかの理由で「世界の霧」アプリ（Android版）にご満足いただけない場合は、問答無用で返金いたします。アップル社は開発者に直接返金することを許可していないため、このオファーはアンドロイド・ユーザーのみが対象であることにご注意ください。#linebreak()
      ※ プライバシーポリシーについて: 我々はいかなる探索データを収集していません。あなたのデータはクラウドストレージと同期した際にアップロードされますが、アクセスできるのはあなただけです。
      詳しい情報は https://fogofworld.app/ja/privacy_policy よりご確認ください。
    ] // NOTE: もう少し、文字数を増やして dy を下げる（余白を詰める）
  )
)
