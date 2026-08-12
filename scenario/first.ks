; ===================================================
; 最小限のサンプルシナリオ（scene1.ks）
; ===================================================

*start

[cm  ]
[clearfix]
[start_keyconfig]

;----
;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]

;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]
;----

; --- 1. キャラクターの定義（本来はfirst.ks等に書いてもOK） ---
; name: ID（プログラム用）、storage: 画像パス、jname: 画面表示名
[chara_new name="akane" storage="chara/akane/normal.png" jname="あかね"]

; --- 2. 背景と立ち絵の表示 ---
; 背景画像を表示（data/bgimage/room.jpg を読み込み）
[bg storage="room.jpg" time="1000"]

; 立ち絵を表示（data/fgimage/chara/akane.png を読み込み）
[chara_show name="akane" time="500"]

; --- 3. 会話（テキスト表示） ---
#あかね
「こんにちは！ティラノスクリプトへようこそ！」[p]

#あかね
「ここから物語が始まるよ。さっそく選択肢のテストをしてみよう！」[p]

#
（どう返事しようか？）[p]

; --- 4. 選択肢の表示 ---
; x/y: 表示位置、width: ボタン幅、target: 選択時のジャンプ先ラベル
[glink color="blue" target="*opt1" text="「よろしく！」と返事する" x="300" y="250" width="600"]
[glink color="blue" target="*opt2" text="黙ってじっと見つめる" x="300" y="350" width="600"]
[s] ; プレイヤーが選ぶまでゲームを停止するタグ（必須）

; --- 5. 分岐ルートA（「よろしく！」を選んだ場合） ---
*opt1
#あかね
「うん！一緒にかわいいノベルゲームを作ろうね！」[p]
[jump target="*common"] ; 合流ポイントへジャンプ

; --- 6. 分岐ルートB（黙っていた場合） ---
*opt2
#あかね
「う、うーん……なんでそんなにじっと見てるの……？」[p]
[jump target="*common"] ; 合流ポイントへジャンプ

; --- 7. 合流ルート ---
*common
#あかね
「これで基本的な会話と選択肢の流れはバッチリだね！」[p]

#
（サンプルシナリオ終了）[p]

[s] ; ゲームを停止
