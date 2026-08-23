; ===================================================
; 最小限のサンプルシナリオ（scene1.ks）
; ===================================================

*start

[cm]
[clearfix]
[start_keyconfig]

@jump target="*scene11"

@layopt layer="message0" visible=false

; 背景を黒画像に切り替え
@bg storage="black.jpg" time="500"

; タイプライター文字の表示（message1を使用）
@layopt layer="message1" visible=true
@current layer="message1"
@delay speed=120
@playse buf="1" storage="type1.mp3" loop="true"
@start_keyconfig
８月１日 午後３：００[r]
Ａ町解体前の雑居ビル
@stopse buf="1"
@playse buf="1" storage="none"
@wait time=1500
@layopt layer="message1" visible=false
@er layer="message1"

*scene11
;あおい登場
;メッセージウィンドウの表示
@current layer="message0"
@layopt layer="message0" visible=true
@resetdelay

#
なにか、おもしろいものみつからないかなぁ〜[p]

;CAST表示
@cm
@freeimage layer="1"
@layopt layer="1" visible=true
@image layer="1" storage="cast1.jpg" x="400" y="100" time=1000
@wait time=500
@freeimage layer="1" time=1000
@layopt layer="1" visible=false

;金庫前の背景が現れる
@bg storage="kinko_before.jpg" time="3000"  method="fadeInDown"
@chara_show name="aoi"

#あおい:default
あれ？[p]

#あおい:serious
これって[r]
もしかして…[p]

@playse buf="1" storage="kiran.mp3"
#あおい:otakara
[font size="40"]
お宝！？[p]
[resetfont]

#あおい:serious
…開けられるかな？[p]

#あおい:gutto
@playse buf="1" storage="piin.mp3"
[font size="40"]
やってみなきゃわかんない！[p]
[resetfont]
普段の行いがいいから、お宝の方が私を呼んでくれたのよ！[p]

@chara_mod name="aoi" face="serious2"
#
ガチャガチャ…[p]

#あおい:thinking
うーん、そう簡単には開かない？[p]

; 背景揺れ
@quake time=1000 hmax=10 vmax=10 count=5 wait="false"
#あおい:punch
あおいちゃんスーパーウルトラミラクルデラックスキラキラパーンチ！！！[p]


@playse buf="1" storage="punch_kinko.mp3"
#
ガンッ☆[p]

#あおい:pien
あいたたたたた...[r]
ダメだ。こりゃ。[p]

[playse buf="1" storage="piin.mp3"]
#あおい:pikon
…そうだ、ゆうゆう呼ぼっと[p]



[s] ; ゲームを停止