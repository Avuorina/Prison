#> main:load
#
# ロード時に実行
#
#

## 定義

## スコアボード
    # Direction - プレイヤーの方向を保存するぞ
        scoreboard objectives add Direction dummy "方向"
    # _ - 汎用スコアボード
        scoreboard objectives add _ dummy "汎用スコア"
    # SneakFrequency - スニーク頻度を保存するぞ
        scoreboard objectives add SneakFrequency dummy "スニーク頻度"
    # DoorOpenTimer - ドアが開く時間
        scoreboard objectives add DoorOpenTimer dummy "ドアの開く時間"
    # DoorID - 同じドアの部品(インタラクション)を見分けるID
        scoreboard objectives add DoorID dummy "ドアID"
    # GroundRecipeID - 置きレシピの材料と当たり判定(インタラクション)を結びつけるID
        scoreboard objectives add GroundRecipeID dummy "置きレシピID"
    # ReadBook - 書いた本を開いた回数
        scoreboard objectives add ReadBook minecraft.used:minecraft.written_book "本を読んだ回数"
    # EscapeTimer - ゴールにいる時間
        scoreboard objectives add EscapeTimer dummy "脱獄タイマー"
    # UseCarrotStick - 人参付きの棒を使った回数(デバッグ用アイテムの右クリック検知)
        scoreboard objectives add UseCarrotStick minecraft.used:minecraft.carrot_on_a_stick "人参付きの棒の使用回数"
    # SentenceLeft - 囚人ごとの処刑までの残り日数(看守が手で減らす。0の翌朝に処刑)
        scoreboard objectives add SentenceLeft dummy "処刑までの日数"
    # GameId - 何回目のゲームの参加者か(リセット時にオフラインだった人を見分ける)
        scoreboard objectives add GameId dummy "ゲーム番号"
    # PrisonerNo - 囚人番号(プレイヤーと、房の扉の上の表示に付ける)
        scoreboard objectives add PrisonerNo dummy "囚人番号"
    # SelectedNo - 看守が選んでいる房の囚人番号
        scoreboard objectives add SelectedNo dummy "選んだ囚人番号"
    # SentenceAdjust - 看守のボタン(1:−1日 / 2:+1日)
        scoreboard objectives add SentenceAdjust trigger "処刑の日の操作"
    # GateTimer - 持ち物チェックゲートの警報が鳴ってからの時間
        scoreboard objectives add GateTimer dummy "ゲートの警報"
    # Schedule - 刑務所の時計(#Day 日付 / #Phase 予定 / #Timer 経過tick / #Labor 刑務作業中)
        scoreboard objectives add Schedule dummy "日課"
## ボスバー
    # prison:schedule - 看守にだけ見せる日課の残り時間
        bossbar add prison:schedule ""
## チーム
    team add debug
    # Guard - 看守
        team add Guard "看守"
        team modify Guard color blue
    # Prisoner - 囚人
        team add Prisoner "囚人"
        team modify Prisoner color gold
    # Escaped - 脱獄者
        team add Escaped "脱獄者"
        team modify Escaped color green
    # Executed - 処刑された囚人
        team add Executed "処刑"
        team modify Executed color dark_red
        team modify Executed nametagVisibility never
    # 名前を壁越しに見えなくする(全チーム共通)
        team modify Guard nametagVisibility never
        team modify Prisoner nametagVisibility hideForOtherTeams
        team modify Escaped nametagVisibility never

## ゲームルール
    gamerule limited_crafting true

## ロード完了
    execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
    title @a actionbar {"text":"ロード完了！","color":"green","bold":true}