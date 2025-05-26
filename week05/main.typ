#import "@preview/cades:0.3.0": qr-code

#set document(author: (), title: "情報デザインII 第5週課題")

// A3
#set page(
  width: 420mm,
  height: 297mm,
  margin: (x: 0mm, y: 0mm)
)

#set text(lang: "ja")

#place(
  top + left,
  box(
    width: 100%,
    height: 297mm - 45mm,
  )[
    #image(
      width: 100%,
      "assets/images/fow.jpg"
    )
    #place(
      top + right,
      dx: -10mm,
      dy: 5mm,
      image(
        width: 35mm,
        "assets/images/logo2.png"
      )
    )
    #place(
      bottom + right,
      dx: -10mm,
      dy: -15mm,
      image(
        width: 60mm,
        "assets/images/fog_map.png"
      )
    )
    #place(
      bottom + left,
      dx: 10mm,
      dy: -19mm,
      text(
        fill: rgb(255, 255, 255, 200),
        size: 180pt,
        font: "DIN 2014",
        weight: "extralight",
        tracking: -6pt,
        spacing: 0.25em,
      )[FOG OF WORLD]
    )
    #place(
      bottom + left,
      dx: 14mm,
      dy: -77mm,
      text(
        fill: rgb(255, 255, 255, 200),
        size: 60pt,
        font: "TsukuhouMincho",
        weight: "bold",
        cjk-latin-spacing: none,
      )[
        #stack(
          dir: ltr,
          spacing: -5pt,
          text(tracking: -4pt)[世界],
          text(tracking: -1pt)[を],
          text(tracking: -2pt)[探検],
          text(tracking: -10pt)[しよう],
        )
      ]
    ),
  ]
)

#place(
  bottom + left,
  box(
    width: 100%,
    height: 50mm,
    fill: white,
  )[
    #place(
      horizon,
      dx: 14mm,
      box(
        height: 24mm,
      )[
        #stack(
          dir: ltr,
          spacing: 10mm,
          stack(
            dir: ltr,
            spacing: 7.5mm,
            image("assets/images/fogofworld_app_icon.svg"),
            box(height: 56%)[
              #image("assets/images/fogofworld_title.svg")
            ],
          ),
          stack(
            dir: ltr,
            image(
                width: 45mm,
              "assets/images/download-appstore.png"
            ),
            image(
                width: 45mm,
              "assets/images/download-googleplay.png"
            ),
          ),
          line(
            end: (0%, 100%)
          ),
          box(
            width: 160mm,
            par(
              leading: 0.8em,
              text(
                font: ("Yaku Han JP", "Hiragino Kaku Gothic ProN"),
                size: 11.5pt,
              )[
                Fog of World を使えば、訪れた場所もそこへ至る道のりも鮮やかに蘇る。
                地図に刻み、一歩一歩の足跡を目で追えるように描き出そう。
                あなたはどこにも縛られないから。
              ]
            )
          ),
          place(
            horizon,
            dx: -20pt,
            qr-code("https://fogofworld.app/", width: 20mm)
          ),
        )
      ]
    )
  ]
)

// TODO:
// 免責事項を入れる
// App Store は Apple inc のなんたらかんたらですみたいな
//
// TODO:
// FOG OF WORLD を太字にする
// OF を小さくする？
// 背景の線と被る、もしそのままの太さにするには、もう少し背景を殺す
//
// NOTE:
// スマホの画面を大きくしないで、文字に合わせてみる？
//
// NOTE:
// 下の白地をいっそのこと無くしてみる
