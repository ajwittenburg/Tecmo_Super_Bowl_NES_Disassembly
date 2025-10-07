

_F{_PLAY_DATA_MACROS

.MACRO PlayerCommandData.qbStance
    .DB $EE
.ENDM

.MACRO PlayerCommandData.changePlayerIconToReturner
    .DB $EF
.ENDM

.MACRO PlayerCommandData.faceDirection direction
    .DB $F0
    .DB direction
.ENDM

.MACRO PlayerCommandData.stand time
    .DB $F3
    .DB time
.ENDM

.MACRO PlayerCommandData.turn time
    .DB $F4
    .DB time
.ENDM

.MACRO PlayerCommandData.wait startTime, endTime
    .DB $F5
    .DB startTime
    .DB endTime
.ENDM

.MACRO PlayerCommandData.setHP value
    .DB $F6
    .DB value
.ENDM

.MACRO PlayerCommandData.boostHP boost
    .DB $F7
    .DB boost
.ENDM

.MACRO PlayerCommandData.infiniteLoop
    .DB $F8
.ENDM

.MACRO PlayerCommandData.recoverBall
    .DB $FA
.ENDM

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