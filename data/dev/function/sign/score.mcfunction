#> dev:sign/score
#
# ワールド内の看板にスコアを表示させる
#
#

## _
    execute positioned 47 -4 -39 run data merge block ~ ~ ~ {front_text:{has_glowing_text:1b,messages:[{text:"スコア"},"",{score:{name:"_",objective:"_"},bold:true},""]}}
## SneakTimer
    execute positioned 47 -3 -39 run data merge block ~ ~ ~ {front_text:{has_glowing_text:1b,messages:[{text:"スコア"},"",{score:{name:"@a[sort=nearest,limit=1]",objective:"SneakTimer"},bold:true},""]}}
## SneakFrequency
    execute positioned 48 -3 -39 run data merge block ~ ~ ~ {front_text:{has_glowing_text:1b,messages:[{text:"スコア"},"",{score:{name:"@a[sort=nearest,limit=1]",objective:"SneakFrequency"},bold:true},""]}}
## Direction
    execute positioned 49 -3 -39 run data merge block ~ ~ ~ {front_text:{has_glowing_text:1b,messages:[{text:"スコア"},"",{score:{name:"@a[sort=nearest,limit=1]",objective:"Direction"},bold:true},""]}}
