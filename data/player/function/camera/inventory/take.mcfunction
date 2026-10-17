#> player:camera/inventory/take
#
# 看守の CameraID の持ち物を Restore に移して、預かり場所から消す(マクロ)
#
# @within function player:camera/inventory/restore
# @input ID 看守の CameraID

    data remove storage prison:camera Restore
    $data modify storage prison:camera Restore set from storage prison:camera Saved."$(ID)"
    $data remove storage prison:camera Saved."$(ID)"
