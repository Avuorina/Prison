#> main:load
#
# ロード時に実行
#
#

## 定義
    
    ## スコアボード

        ## トリガー系
            # SneakTimer - スニークタイマー
                scoreboard objectives add SneakTimer minecraft.custom:minecraft.sneak_time "スニークタイマー"
        ## その他
            # Direction - プレイヤーの方向を保存するぞ
                scoreboard objectives add Direction dummy "方向"
            # _ - 汎用スコアボード
                scoreboard objectives add _ dummy "汎用スコア"
            # SneakFrequency - スニーク頻度を保存するぞ
                scoreboard objectives add SneakFrequency dummy "スニーク頻度"

## ロード完了
    tellraw @a [{"bold":true,"color":"aqua","text":"["},{"bold":true,"color":"white","text":"Info"},{"color":"aqua","text":"]"},{"bold":false,"color":"white","text":"世界が再読み込みされた。"}]