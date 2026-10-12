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
## 厨房
    # 本のデータを用意
        data modify storage gimmick:book kitchen_manual set value {id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"厨房作業の心得",author:"厨房主任",pages:["厨房作業の心得\n\n一、竈の火\n二、薪の扱い\n三、刃物の管理\n四、食材について\n\n作業前に必ず\n目を通すこと。","一、竈の火\n\n火は作業の始めに\n入れること。\n\n作業中は\n火を絶やすな。\n\n作業が終わったら\n必ず火を消すこと。","二、薪の扱い\n\n皮の付いた薪は\n煙ばかり出る。\n薪は床に投げて置き、\n斧で皮を剥いでから\n使うこと。\n\n剥いた薪は割って\n焚き付けにする。","三、刃物の管理\n\n包丁、斧などの\n刃物は作業前に\n借り受け、作業後に\n必ず返却すること。\n\n数が合わない時は\n全員の身体検査を行う。\n\n斧が壊れたら看守に申し出ること。","四、食材について\n\n食材の持ち出しは\n固く禁ずる。\n\nつまみ食いも\n見つけ次第\n懲罰房送りとする。\n\n――厨房主任"]},"minecraft:lore":[{text:"刑務作業用",color:"gray",italic:false}]}}

    # 本が置かれている状態の書見台にする
        setblock 40 60 68 lectern[facing=north,has_book=true]

    # 本を入れて、1ページ目を開いておく
        data modify block 40 60 68 Book set from storage gimmick:book kitchen_manual
        data modify block 40 60 68 Page set value 0
    # 斧
        
## レシピ
    recipe take @a *