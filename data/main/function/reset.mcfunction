#> main:reset
#
# ワールドをリセットするぞ
#
#

## 本の場所
# 脱衣所
    item replace block -7 61 70 container.13 with written_book[custom_data={UnlockRecipe:"wooden_shovel"},written_book_content={title:"ボロボロの手帳",author:"不明",pages:["ここに来て何日経ったか\nもう数えていない。\n\n看守は毎晩同じ道を\n同じ時間に通る。","便所の臭いが\n日に日にひどくなる。\n\n水が流れていかないのは\n詰まっているからだ。\n\n排水口の下は\n泥だけだ。","\n\n――あとは\n音を立てるな。"]}] 1
# 看守用倉庫
    item replace block 12 49 68 container.10 with written_book[written_book_content={title:"破れた園芸メモ",author:"園芸好きの看守",generation:3,pages:[{text:"",extra:[{text:"木の育て方\n\n",bold:true},{text:"木には一定の***が\n必**。\n\n苗木は純**なつ*に\nしか植**れない。\n\n手****せ*い。\n斧******。"}]},{text:"",extra:[{text:"木の育て方（続き）\n\n",bold:true},{text:"苗木には光が要る。\n地下で育てるなら\n松明を絶やすな。\n\n骨粉をやれば早く\n育つが、***に\n見つからないように。\n\n"},{text:"――ここから先は\n破れている",color:"dark_gray",italic:true}]}]},lore=[{text:"ページが破れている...",color:"gray",italic:false}]]
    item replace block 12 49 71 container.15 with oak_sapling[can_place_on={blocks:"minecraft:dirt"},tooltip_display={hidden_components:["minecraft:can_place_on"]}] 3
    item replace block 12 50 68 container.21 with cobblestone 1
## 厨房
    # 本のデータを用意
        data modify storage gimmick:book kitchen_manual set value {id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"厨房作業の心得",author:"厨房主任",pages:["厨房作業の心得\n\n一、竈の火\n二、薪の扱い\n三、刃物の管理\n四、食材について\n\n作業前に必ず\n目を通すこと。","一、竈の火\n\n火は作業の始めに\n入れること。\n\n作業中は\n火を絶やすな。\n\n作業が終わったら\n必ず火を消すこと。","二、薪の扱い\n\n皮の付いた薪は\n煙ばかり出る。\n薪は床に投げて置き、\n斧で皮を剥いでから\n使うこと。\n\n剥いた薪は割って\n焚き付けにする。","三、刃物の管理\n\n包丁、斧などの\n刃物は作業前に\n借り受け、作業後に\n必ず返却すること。\n\n数が合わない時は\n全員の身体検査を行う。\n\n斧が壊れたら看守に申し出ること。","四、食材について\n\n食材の持ち出しは\n固く禁ずる。\n\nつまみ食いも\n見つけ次第\n懲罰房送りとする。\n\n――厨房主任"]},"minecraft:lore":[{text:"刑務作業用",color:"gray",italic:false}]}}

    # 本が置かれている状態の書見台にする
        setblock 40 60 68 lectern[facing=north,has_book=true]

    # 本を入れて、1ページ目を開いておく
        data modify block 40 60 68 Book set from storage gimmick:book kitchen_manual
        data modify block 40 60 68 Page set value 0
    # 斧
        item replace block 47 60 68 container.13 with wooden_axe[item_name="木の斧",can_break=[{blocks:"minecraft:oak_log"},{blocks:"minecraft:oak_leaves"}],tooltip_display={hidden_components:["minecraft:can_break","minecraft:attribute_modifiers"]}] 1
## 前任者の隠れ家
    # 続きの手帳
        item replace block 35 50 104 container.13 with written_book[custom_data={UnlockRecipe:"wooden_axe"},written_book_content={title:"ボロボロの手帳⓶",author:"不明",generation:3,pages:["ここまで来れたなら\nもう引き返すな。\n\nこの部屋のことは\n誰にも話すな。\n他の囚人に話すかはお前の自由だが。","石のツルハシは\nもう刃がこぼれてる。\nあと数回が限界だ。\n\n房の下の石を抜けば\n下水道に出られる。\n\nレバーを忘れるな。","出口は東の排水口。\n\nだが壁が厚すぎる。\nツルハシじゃ\n歯が立たなかった。\n\n爆薬でしか\n抜けない。","爆薬には鉄がいる。\n鉄の前に石だ。\n\n石の前に木だ。\n苗木は光がないと\n育たない。\n\n斧はここで作れ。","水を止めろ。\n\n濡れた爆薬は\nただの粉だ。","明日、火薬を\n取りに行く。\n\n使われなくなった\n武器庫の----"]}] 1
    # 欠けた石のツルハシ
        item replace block 35 50 104 container.11 with stone_pickaxe[item_name="欠けた石のツルハシ",damage=130,can_break={blocks:"minecraft:smooth_basalt"},lore=[{text:"あと一回振るのが限界っぽい。",color:"gray",italic:true}],tooltip_display={hidden_components:["minecraft:can_break"]}] 1
## 囚人用倉庫
    # 本のデータを用意
        data modify storage gimmick:book storehouse_manual set value {id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"倉庫管理の手引き",author:"用度係",pages:["倉庫管理の手引き\n\n一、食料の保管\n二、備品の貸出\n三、設備の修繕\n四、廃材の扱い\n\n倉庫当番は\n必ず目を通すこと。","一、食料の保管\n\n食料は棚ごとに\n種類を分けて置く。\n\n古いものから\n厨房へ出すこと。\n\n持ち出しの際は\n看守の許可を得よ。","二、備品の貸出\n\n道具の貸出は\n一つずつのみ。\n次の貸出は\n返却が済むまで\nしない。\n\n数が合わない時は\n看守に報告せよ。","三、設備の修繕\n\n鎖が錆びたら\n新しいものと\n取り替えること。\n\n外した鎖は床に置き、\nつるはしで叩いて\n鉄屑にする。","四、廃材の扱い\n\n鉄屑は箱にまとめ、\n鍛冶場へ回す。\n\n木屑は焚き付けに\n厨房へ回す。\n\n廃材であっても\n持ち出しは禁ずる。\n\n――用度係"]},"minecraft:lore":[{text:"倉庫当番用",color:"gray",italic:false}]}}

    # 本が置かれている状態の書見台にする
        setblock 49 60 82 lectern[facing=east,has_book=true]

    # 本を入れて、1ページ目を開いておく
        data modify block 49 60 82 Book set from storage gimmick:book storehouse_manual
        data modify block 49 60 82 Page set value 0
## ボイラー室
    # 中身を空にする
        data remove block -20 60 56 Items
    # レッドストーン2つと火打石をばらばらに
        item replace block -20 60 56 container.3 with redstone 1
        item replace block -20 60 56 container.14 with flint 1
        item replace block -20 60 56 container.22 with redstone 1
        # 発破の記録
            item replace block -20 60 56 container.10 with written_book[written_book_content={title:"発破作業の記録",author:"ボイラー技士",generation:2,pages:["発破作業の記録\n\nこの刑務所の地下を\n掘ったときの\n覚え書きを残す。\n\n後任の者は\n火の扱いに\n十分注意せよ。","一、火薬の練り方\n\n火薬に\n赤い石の粉を\n混ぜて練ると\n火の塊になる。","二、爆薬の作り方\n\n火の塊を\n砂で包み込めば\n爆薬になる。\n\n砂の量は\n惜しむな。","三、点火\n\n点火には\n火打石と鉄を\n打ち合わせて使う。\n\n点けたら\nすぐに離れろ。","四、注意\n\n爆薬は水に弱い。\n濡れた場所では\n火がつかず\nただの粉に戻る。"]}] 1
## 廃武器庫の火薬
    # -3 50 75 → 右
        item replace block -3 50 75 container.0 with air
        item replace block -3 50 75 container.1 with air
        item replace block -3 50 75 container.2 with gunpowder 1
    # -5 49 75 → 左
        item replace block -5 49 75 container.0 with gunpowder 1
        item replace block -5 49 75 container.1 with air
        item replace block -5 49 75 container.2 with air
    # -7 49 75 → 真ん中
        item replace block -7 49 75 container.0 with air
        item replace block -7 49 75 container.1 with gunpowder 1
        item replace block -7 49 75 container.2 with air
    # -9 50 75 → 左
        item replace block -9 50 75 container.0 with gunpowder 1
        item replace block -9 50 75 container.1 with air
        item replace block -9 50 75 container.2 with air
    # -10 48 75 → 右
        item replace block -10 48 75 container.0 with air
        item replace block -10 48 75 container.1 with air
        item replace block -10 48 75 container.2 with gunpowder 1

## 廃武器庫のレッドストーン
    # -9 50 72 → 真ん中
        item replace block -9 50 72 container.0 with air
        item replace block -9 50 72 container.1 with redstone 1
        item replace block -9 50 72 container.2 with air
    # -7 48 72 → 左
        item replace block -7 48 72 container.0 with redstone 1
        item replace block -7 48 72 container.1 with air
        item replace block -7 48 72 container.2 with air
## レシピ
    recipe take @a *
    advancement revoke @a everything

## ブロックの再設置
# 房下
    setblock 38 58 72 mud
    setblock 30 58 72 mud
    setblock 22 58 72 mud
    setblock 14 58 72 mud
    setblock 16 51 71 mud
    setblock 34 46 69 smooth_basalt

# 畑
    setblock 16 56 98 lever[face=wall,facing=west,powered=true]
    setblock 35 59 100 rooted_dirt

# 地下水道
    fill 57 50 60 57 48 64 iron_chain[axis=z,waterlogged=false]
    fill 57 47 63 57 47 61 iron_chain[axis=z,waterlogged=true]
    fill 35 50 63 35 47 61 iron_chain[axis=y]
    fill 24 50 63 24 47 61 iron_chain[axis=y]
    fill 7 50 63 7 47 61 iron_chain[axis=y]
    fill -14 50 63 -14 47 61 iron_chain[axis=y]
    fill -33 50 63 -33 47 61 iron_chain[axis=y]
    setblock -1 49 64 waxed_copper_bars[east=false,north=false,south=true,west=true]
    setblock -1 48 64 waxed_exposed_copper_bars[east=false,north=false,south=true,west=true]
    setblock -2 49 64 waxed_oxidized_copper_bars[east=true,north=false,south=true,west=true]
    setblock -2 48 64 waxed_weathered_copper_bars[east=true,north=false,south=true,west=true]
    setblock -3 49 64 waxed_weathered_copper_bars[east=true,north=false,south=true,west=false]
    setblock -3 48 64 waxed_exposed_copper_bars[east=true,north=false,south=true,west=false]
    fill 65 50 61 65 48 63 mangrove_planks
    fill 65 49 61 65 49 63 mangrove_fence[waterlogged=true]
    data merge storage gimmick:sluice_gate {On:false}
    setblock 60 49 70 lever[face=wall,facing=north,powered=true]

# 自由広場
    fill -53 59 46 -49 59 51 sand replace air

## 囚人
    # 脱獄した人・処刑された人を囚人に戻す
        gamemode adventure @a[team=Escaped]
        gamemode adventure @a[team=Executed]
        team join Prisoner @a[team=Escaped]
        team join Prisoner @a[team=Executed]
    # 処刑までの残り日数は30日(看守が毎晩、消灯前に手で減らす)
        scoreboard players set @a[team=Prisoner] SentenceLeft 30

## 日課
    # 1日目の起床から時計を動かす
        function gimmick:schedule/start

## 房の扉の上の表示
    function gimmick:sentence/board/update_all
