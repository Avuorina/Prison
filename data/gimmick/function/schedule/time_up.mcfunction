#> gimmick:schedule/time_up
#
# 30日が過ぎた。刑期満了…ではなく脱獄失敗
#
# @within function gimmick:schedule/next

    function gimmick:schedule/stop
    title @a times 10 100 20
    title @a subtitle {text:"30日が過ぎた",color:"gray"}
    title @a title {text:"脱獄失敗",color:"red",bold:true}
    playsound minecraft:block.bell.use master @a ~ ~ ~ 1 0.5
