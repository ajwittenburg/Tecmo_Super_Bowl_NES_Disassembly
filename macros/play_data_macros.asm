

_F{_PLAY_DATA_MACROS

.MACRO  PlayerCommandData.setToGrapple byteTargetPlayerBitStringA, byteTargetPlayerBitStringB
    .DB $FC
    .DB byteTargetPlayerBitStringA
    .DB byteTargetPlayerBitStringB
.ENDM

.MACRO  PlayerCommandData.setToBlock byteTargetPlayerBitStringA, byteTargetPlayerBitStringB
    .DB $FD
    .DB byteTargetPlayerBitStringA
    .DB byteTargetPlayerBitStringB
.ENDM

.MACRO PlayerCommandData.loopTo newLocation
    .DB $FE
    .DB newLocation-$+1
.ENDM

.MACRO PlayerCommandData.jumpTo newLocation
    .DB $FF
    .WORD newLocation
.ENDM 

_F}_PLAY_DATA_MACROS