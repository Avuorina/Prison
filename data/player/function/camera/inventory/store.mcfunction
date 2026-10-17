#> player:camera/inventory/store
#
# 預かった持ち物を、看守の CameraID ごとに分けて置く(マクロ)
#
# @within function player:camera/inventory/save
# @input ID 看守の CameraID

    $data modify storage prison:camera Saved."$(ID)" set from storage prison:camera Save
    data remove storage prison:camera Save
