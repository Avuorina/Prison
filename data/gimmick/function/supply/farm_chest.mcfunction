#> gimmick:supply/farm_chest
#
# 畑のラージチェスト(-54 60 38 / -54 60 37)を毎朝パンパンにするぞ
#   種には「耕地にしか植えられない」、クワには「土しか耕せない」を付ける
#   (アドベンチャーモードでは can_place_on がないと植えたり耕したりできない)
#
# @within function gimmick:schedule/start
# @within function gimmick:schedule/next

## -54 60 38 : 種(ニンジン・ジャガイモも)
    # 小麦の種
        item replace block -54 60 38 container.0 with wheat_seeds[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 38 container.1 with wheat_seeds[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 38 container.2 with wheat_seeds[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 38 container.3 with wheat_seeds[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 38 container.4 with wheat_seeds[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
    # ビートルートの種
        item replace block -54 60 38 container.5 with beetroot_seeds[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 38 container.6 with beetroot_seeds[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 38 container.7 with beetroot_seeds[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 38 container.8 with beetroot_seeds[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 38 container.9 with beetroot_seeds[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
    # ニンジン
        item replace block -54 60 38 container.10 with carrot[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 38 container.11 with carrot[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 38 container.12 with carrot[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 38 container.13 with carrot[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 38 container.14 with carrot[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
    # ジャガイモ
        item replace block -54 60 38 container.15 with potato[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 38 container.16 with potato[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 38 container.17 with potato[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 38 container.18 with potato[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
    # カボチャの種
        item replace block -54 60 38 container.19 with pumpkin_seeds[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 38 container.20 with pumpkin_seeds[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 38 container.21 with pumpkin_seeds[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 38 container.22 with pumpkin_seeds[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
    # スイカの種
        item replace block -54 60 38 container.23 with melon_seeds[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 38 container.24 with melon_seeds[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 38 container.25 with melon_seeds[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 38 container.26 with melon_seeds[can_place_on={blocks:"minecraft:farmland"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64

## -54 60 37 : 道具
    # 石のクワ(土だけ耕せる)
        item replace block -54 60 37 container.0 with stone_hoe[can_place_on={blocks:"minecraft:dirt"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 1
        item replace block -54 60 37 container.1 with stone_hoe[can_place_on={blocks:"minecraft:dirt"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 1
        item replace block -54 60 37 container.2 with stone_hoe[can_place_on={blocks:"minecraft:dirt"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 1
        item replace block -54 60 37 container.3 with stone_hoe[can_place_on={blocks:"minecraft:dirt"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 1
        item replace block -54 60 37 container.4 with stone_hoe[can_place_on={blocks:"minecraft:dirt"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 1
        item replace block -54 60 37 container.5 with stone_hoe[can_place_on={blocks:"minecraft:dirt"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 1
        item replace block -54 60 37 container.6 with stone_hoe[can_place_on={blocks:"minecraft:dirt"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 1
        item replace block -54 60 37 container.7 with stone_hoe[can_place_on={blocks:"minecraft:dirt"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 1
        item replace block -54 60 37 container.8 with stone_hoe[can_place_on={blocks:"minecraft:dirt"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 1
    # バケツ
        item replace block -54 60 37 container.9 with bucket 16
        item replace block -54 60 37 container.10 with bucket 16
        item replace block -54 60 37 container.11 with bucket 16
        item replace block -54 60 37 container.12 with bucket 16
        item replace block -54 60 37 container.13 with bucket 16
        item replace block -54 60 37 container.14 with bucket 16
        item replace block -54 60 37 container.15 with bucket 16
        item replace block -54 60 37 container.16 with bucket 16
        item replace block -54 60 37 container.17 with bucket 16
    # 水入りスプラッシュポーション
        item replace block -54 60 37 container.18 with splash_potion[potion_contents={potion:"minecraft:water"}] 1
        item replace block -54 60 37 container.19 with splash_potion[potion_contents={potion:"minecraft:water"}] 1
        item replace block -54 60 37 container.20 with splash_potion[potion_contents={potion:"minecraft:water"}] 1
        item replace block -54 60 37 container.21 with splash_potion[potion_contents={potion:"minecraft:water"}] 1
        item replace block -54 60 37 container.22 with splash_potion[potion_contents={potion:"minecraft:water"}] 1
    # 雑巾
        item replace block -54 60 37 container.23 with paper[item_name="雑巾"] 64
        item replace block -54 60 37 container.24 with paper[item_name="雑巾"] 64
        item replace block -54 60 37 container.25 with paper[item_name="雑巾"] 64
        item replace block -54 60 37 container.26 with paper[item_name="雑巾"] 64
