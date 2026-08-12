- 黒画面表示
- （足音）：コツコツコツ
- ？？？：なんかおもしろいものみつからないかなあ〜
- 画面に「CAST:橘あおい」の文字と、あおいの立ち絵
- （足音）：コツコツコツ

```
; --- 事前準備（定義） ---
; メッセージ枠を非表示にして黒背景（base）をセット
[cm]
[clearfix]
[bg storage="black.jpg" time="500"]

; --- 演出開始 ---

; 1. （足音）：コツコツコツ
; ※足音の再生と少しのウェイト
[playse storage="footsteps.ogg"]
[wait time="1500"]

; 2. ？？？のセリフ
[tb_start_text mode=1 ]
#？？？
「なんかおもしろいものみつからないかなあ〜」[p]
[tb_end_text]

; メッセージ枠とテキストを一度消去
[er]

; 3. あおいの立ち絵表示
[chara_show name="aoi" storage="chara/aoi/normal.png" wait="true"]

; 4. 「CAST:橘あおい」の文字表示（フリーテキスト等の演出）
; メッセージウィンドウなしで画面上に直接テキストを表示する例
[ptext layer="1" text="CAST : 橘あおい" x="300" y="200" size="40" color="0xffffff" time="500"]
[wait time="1000"]

; 5. （足音）：コツコツコツ
[playse storage="footsteps.ogg"]
[wait time="1500"]

; 後片付け（表示したキャスト名を消して次へ進む準備）
[free layer="1" name="ptext" time="500"]
```
