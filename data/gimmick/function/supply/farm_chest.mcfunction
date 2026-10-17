#> gimmick:supply/farm_chest
#
# 畑のラージチェスト2つ(-54 60 38 / -54 60 37 と -54 60 36 / -54 60 35)を毎朝パンパンにするぞ
#   種には「耕地にしか植えられない」、クワには「土しか耕せない」、シャベルには「土しか掘れない」、
#   骨粉には「作物にだけ使える」を付ける
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
    # 石のクワ(土だけ耕せる・作物を収穫できる。苗の茎は壊せない)
        item replace block -54 60 37 container.0 with stone_hoe[can_place_on={blocks:"minecraft:dirt"},can_break={blocks:["minecraft:wheat","minecraft:carrots","minecraft:potatoes","minecraft:beetroots","minecraft:melon","minecraft:pumpkin"]},lore=[{text:"作物を収穫できる",color:"gray",italic:false}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]}] 1
        item replace block -54 60 37 container.1 with stone_hoe[can_place_on={blocks:"minecraft:dirt"},can_break={blocks:["minecraft:wheat","minecraft:carrots","minecraft:potatoes","minecraft:beetroots","minecraft:melon","minecraft:pumpkin"]},lore=[{text:"作物を収穫できる",color:"gray",italic:false}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]}] 1
        item replace block -54 60 37 container.2 with stone_hoe[can_place_on={blocks:"minecraft:dirt"},can_break={blocks:["minecraft:wheat","minecraft:carrots","minecraft:potatoes","minecraft:beetroots","minecraft:melon","minecraft:pumpkin"]},lore=[{text:"作物を収穫できる",color:"gray",italic:false}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]}] 1
        item replace block -54 60 37 container.3 with stone_hoe[can_place_on={blocks:"minecraft:dirt"},can_break={blocks:["minecraft:wheat","minecraft:carrots","minecraft:potatoes","minecraft:beetroots","minecraft:melon","minecraft:pumpkin"]},lore=[{text:"作物を収穫できる",color:"gray",italic:false}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]}] 1
        item replace block -54 60 37 container.4 with stone_hoe[can_place_on={blocks:"minecraft:dirt"},can_break={blocks:["minecraft:wheat","minecraft:carrots","minecraft:potatoes","minecraft:beetroots","minecraft:melon","minecraft:pumpkin"]},lore=[{text:"作物を収穫できる",color:"gray",italic:false}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]}] 1
        item replace block -54 60 37 container.5 with stone_hoe[can_place_on={blocks:"minecraft:dirt"},can_break={blocks:["minecraft:wheat","minecraft:carrots","minecraft:potatoes","minecraft:beetroots","minecraft:melon","minecraft:pumpkin"]},lore=[{text:"作物を収穫できる",color:"gray",italic:false}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]}] 1
    # 石のシャベル(土だけ掘れる)
        item replace block -54 60 37 container.6 with stone_shovel[can_break={blocks:"minecraft:dirt"},lore=[{text:"土だけ掘れる",color:"gray",italic:false}],tooltip_display={hidden_components:["minecraft:can_break","minecraft:attribute_modifiers"]}] 1
        item replace block -54 60 37 container.7 with stone_shovel[can_break={blocks:"minecraft:dirt"},lore=[{text:"土だけ掘れる",color:"gray",italic:false}],tooltip_display={hidden_components:["minecraft:can_break","minecraft:attribute_modifiers"]}] 1
        item replace block -54 60 37 container.8 with stone_shovel[can_break={blocks:"minecraft:dirt"},lore=[{text:"土だけ掘れる",color:"gray",italic:false}],tooltip_display={hidden_components:["minecraft:can_break","minecraft:attribute_modifiers"]}] 1
        item replace block -54 60 37 container.9 with stone_shovel[can_break={blocks:"minecraft:dirt"},lore=[{text:"土だけ掘れる",color:"gray",italic:false}],tooltip_display={hidden_components:["minecraft:can_break","minecraft:attribute_modifiers"]}] 1
        item replace block -54 60 37 container.10 with stone_shovel[can_break={blocks:"minecraft:dirt"},lore=[{text:"土だけ掘れる",color:"gray",italic:false}],tooltip_display={hidden_components:["minecraft:can_break","minecraft:attribute_modifiers"]}] 1
        item replace block -54 60 37 container.11 with stone_shovel[can_break={blocks:"minecraft:dirt"},lore=[{text:"土だけ掘れる",color:"gray",italic:false}],tooltip_display={hidden_components:["minecraft:can_break","minecraft:attribute_modifiers"]}] 1
    # バケツ(土と水にだけ使える)
        item replace block -54 60 37 container.12 with bucket[can_place_on={blocks:["minecraft:dirt","minecraft:water"]},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 16
        item replace block -54 60 37 container.13 with bucket[can_place_on={blocks:["minecraft:dirt","minecraft:water"]},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 16
        item replace block -54 60 37 container.14 with bucket[can_place_on={blocks:["minecraft:dirt","minecraft:water"]},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 16
        item replace block -54 60 37 container.15 with bucket[can_place_on={blocks:["minecraft:dirt","minecraft:water"]},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 16
        item replace block -54 60 37 container.16 with bucket[can_place_on={blocks:["minecraft:dirt","minecraft:water"]},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 16
        item replace block -54 60 37 container.17 with bucket[can_place_on={blocks:["minecraft:dirt","minecraft:water"]},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 16
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

## -54 60 36 : シュルカーボックス(緑・水色・ピンク 各3つ)と骨粉
    # シュルカーボックス(緑)
        item replace block -54 60 36 container.0 with green_shulker_box 1
        item replace block -54 60 36 container.1 with green_shulker_box 1
        item replace block -54 60 36 container.2 with green_shulker_box 1
    # シュルカーボックス(水色)
        item replace block -54 60 36 container.3 with light_blue_shulker_box 1
        item replace block -54 60 36 container.4 with light_blue_shulker_box 1
        item replace block -54 60 36 container.5 with light_blue_shulker_box 1
    # シュルカーボックス(ピンク)
        item replace block -54 60 36 container.6 with pink_shulker_box 1
        item replace block -54 60 36 container.7 with pink_shulker_box 1
        item replace block -54 60 36 container.8 with pink_shulker_box 1
    # 骨粉(作物にだけ使える)
        item replace block -54 60 36 container.9 with bone_meal[can_place_on={blocks:"#minecraft:crops"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 36 container.10 with bone_meal[can_place_on={blocks:"#minecraft:crops"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 36 container.11 with bone_meal[can_place_on={blocks:"#minecraft:crops"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 36 container.12 with bone_meal[can_place_on={blocks:"#minecraft:crops"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 36 container.13 with bone_meal[can_place_on={blocks:"#minecraft:crops"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 36 container.14 with bone_meal[can_place_on={blocks:"#minecraft:crops"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 36 container.15 with bone_meal[can_place_on={blocks:"#minecraft:crops"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 36 container.16 with bone_meal[can_place_on={blocks:"#minecraft:crops"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 36 container.17 with bone_meal[can_place_on={blocks:"#minecraft:crops"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 36 container.18 with bone_meal[can_place_on={blocks:"#minecraft:crops"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 36 container.19 with bone_meal[can_place_on={blocks:"#minecraft:crops"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 36 container.20 with bone_meal[can_place_on={blocks:"#minecraft:crops"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 36 container.21 with bone_meal[can_place_on={blocks:"#minecraft:crops"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 36 container.22 with bone_meal[can_place_on={blocks:"#minecraft:crops"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 36 container.23 with bone_meal[can_place_on={blocks:"#minecraft:crops"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 36 container.24 with bone_meal[can_place_on={blocks:"#minecraft:crops"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 36 container.25 with bone_meal[can_place_on={blocks:"#minecraft:crops"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64
        item replace block -54 60 36 container.26 with bone_meal[can_place_on={blocks:"#minecraft:crops"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 64

## -54 60 35 : パン
        item replace block -54 60 35 container.0 with bread 64
        item replace block -54 60 35 container.1 with bread 64
        item replace block -54 60 35 container.2 with bread 64
        item replace block -54 60 35 container.3 with bread 64
        item replace block -54 60 35 container.4 with bread 64
        item replace block -54 60 35 container.5 with bread 64
        item replace block -54 60 35 container.6 with bread 64
        item replace block -54 60 35 container.7 with bread 64
        item replace block -54 60 35 container.8 with bread 64
        item replace block -54 60 35 container.9 with bread 64
        item replace block -54 60 35 container.10 with bread 64
        item replace block -54 60 35 container.11 with bread 64
        item replace block -54 60 35 container.12 with bread 64
        item replace block -54 60 35 container.13 with bread 64
        item replace block -54 60 35 container.14 with bread 64
        item replace block -54 60 35 container.15 with bread 64
        item replace block -54 60 35 container.16 with bread 64
        item replace block -54 60 35 container.17 with bread 64
        item replace block -54 60 35 container.18 with bread 64
        item replace block -54 60 35 container.19 with bread 64
        item replace block -54 60 35 container.20 with bread 64
        item replace block -54 60 35 container.21 with bread 64
        item replace block -54 60 35 container.22 with bread 64
        item replace block -54 60 35 container.23 with bread 64
        item replace block -54 60 35 container.24 with bread 64
        item replace block -54 60 35 container.25 with bread 64
        item replace block -54 60 35 container.26 with bread 64
