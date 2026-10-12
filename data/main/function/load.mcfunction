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
    # FireWoodID - 薪のID
        scoreboard objectives add FirewoodID dummy "薪ID"
## チーム
    team add debug

## レシピ
    gamerule limited_crafting true
    recipe take @a *

## ロード完了
    execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
    title @a actionbar {"text":"ロード完了！","color":"green","bold":true}