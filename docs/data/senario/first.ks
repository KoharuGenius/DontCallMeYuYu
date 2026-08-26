;一番最初に呼び出されるファイル

[title name="だから橘、俺をゆうゆうって言うな！"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ
;----
;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]
[position layer="message1" top="100" left="400" width="500" height="200" color="black" opacity="0" page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]
;----

; --- 1. キャラクターの定義（本来はfirst.ks等に書いてもOK） ---
; name: ID（プログラム用）、storage: 画像パス、jname: 画面表示名
[chara_new name="aoi" storage="chara/aoi/normal.png" jname="あおい"]

; 表情差分の登録
[chara_face name="aoi" face="gutto" storage="chara/aoi/gutto.png"]
[chara_face name="aoi" face="jitome" storage="chara/aoi/jitome.png"]
[chara_face name="aoi" face="namida" storage="chara/aoi/namida.png"]
[chara_face name="aoi" face="niyari" storage="chara/aoi/niyari.png"]
[chara_face name="aoi" face="normal" storage="chara/aoi/normal.png"]
[chara_face name="aoi" face="normal2" storage="chara/aoi/normal2.png"]
[chara_face name="aoi" face="otakara" storage="chara/aoi/otakara.png"]
[chara_face name="aoi" face="pien" storage="chara/aoi/pien.png"]
[chara_face name="aoi" face="punch" storage="chara/aoi/punch.png"]
[chara_face name="aoi" face="serious" storage="chara/aoi/serious.png"]
[chara_face name="aoi" face="serious2" storage="chara/aoi/serious2.png"]
[chara_face name="aoi" face="smile" storage="chara/aoi/smile.png"]
[chara_face name="aoi" face="smile2" storage="chara/aoi/smile2.png"]
[chara_face name="aoi" face="thinking" storage="chara/aoi/thinking.png"]
[chara_face name="aoi" face="pikon" storage="chara/aoi/pikon.png"]
[chara_face name="aoi" face="akire" storage="chara/aoi/akire.png"]
[chara_face name="aoi" face="akire2" storage="chara/aoi/akire2.png"]
[chara_face name="aoi" face="akire3" storage="chara/aoi/akire3.png"]
[chara_face name="aoi" face="inori" storage="chara/aoi/inori.png"]
[chara_face name="aoi" face="ikari" storage="chara/aoi/ikari.png"]
[chara_face name="aoi" face="shobon" storage="chara/aoi/shobon.png"]
[chara_face name="aoi" face="sakebi" storage="chara/aoi/sakebi.png"]
[chara_face name="aoi" face="tehepero" storage="chara/aoi/tehepero.png"]
[chara_face name="aoi" face="azatoi" storage="chara/aoi/azatoi.png"]
[chara_face name="aoi" face="tere" storage="chara/aoi/tere.png"]
[chara_face name="aoi" face="tere2" storage="chara/aoi/tere2.png"]
[chara_face name="aoi" face="doller" storage="chara/aoi/doller.png"]

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;Macro定義
; glinkを簡略化するマクロ「my_glink」の定義
[macro name="mcr_choice"]
    [glink text=%text y=%y x="200" width=500 target=%target color="btn_06_yellow" size="30"]
[endmacro]

;デカ文字表示
[macro name="dekamoji"]
  [font size=40 bold="ture"]
[endmacro]

;アセット表示
[macro name="dispasset"]
  @freeimage layer="1"
  @layopt layer="1" visible=true
  @image layer="1" storage=%storage name=%name|"temp" x="200" y="100" width=300 height=300 time=500
[endmacro]

[macro name="eraseasset"]
  @freeimage layer="1" time=500
  @layopt layer="1" visible=false
[endmacro]

[macro name="disptype"]

[endmacro]



;タイトル画面へ移動
@jump storage="title.ks"

[s]

