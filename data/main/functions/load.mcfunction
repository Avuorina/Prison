#> main:load
#
# ロード時に実行
#
#

## 定義

    ## スコアボード

        ## その他
            # Direction - プレイヤーの方向を保存するぞ
                scoreboard objectives add Direction dummy "方向"
            # _ - 汎用スコアボード
                scoreboard objectives add _ dummy "汎用スコア"
            # DoorOpenTimer - ドアが開く時間
                scoreboard objectives add DoorOpenTimer dummy "ドアの開く時間"
            # InventoryCount - 持ってるアイテム数
                scoreboard objectives add InventoryCount dummy "持ってるアイテム数"
            # CautionTimer - 警告する時間
                scoreboard objectives add CautionTimer dummy "警告する時間"
    ## チーム

        ## 看守
            team add Jailer "看守"
            # modify
                team modify Jailer color blue
                team modify Jailer deathMessageVisibility never
                team modify Jailer friendlyFire false
                team modify Jailer nametagVisibility hideForOtherTeams
                team modify Jailer seeFriendlyInvisibles true
        ## 囚人
            team add Prisoner "囚人"
            # modify
                team modify Prisoner color red
                team modify Prisoner deathMessageVisibility never
                team modify Prisoner friendlyFire true
                team modify Prisoner nametagVisibility hideForOtherTeams
                team modify Prisoner seeFriendlyInvisibles true


## 干渉できないようにできるエンティティを召喚
    function world:gimmick/summon_no.interference

## ロード完了
    tellraw @a [{"color":"dark_gray","text":"\n>"},{"color":"gray","text":">"},{"bold":false,"color":"white","text":"刑務所の掃除がなされた。"}]