#> gimmick:escape/
#
# 逃げ。
#
# @within gimmick:tick

## ギミック：水門
    data merge storage gimmick:sluice_gate {On:true}

## 水門を閉める。
    fill 65 49 61 65 49 63 mangrove_planks
    playsound block.piston.contract master @a 60 49 70 1 1 0