

_F{_PLAY_DATA_MACROS

.MACRO PlayerCommandData.kickoff
    .DB $E5
.ENDM

.MACRO PlayerCommandData.punt
    .DB $E6
.ENDM

.MACRO PlayerCommandData.fieldGoal
    .DB $E7
.ENDM

.MACRO PlayerCommandData.extraPoint
    .DB $E8
.ENDM

.MACRO PlayerCommandData.waitForSnap3PointStance
    .DB $EA
.ENDM

.MACRO PlayerCommandData.shift time
    .DB $EB
    .DB time
.ENDM

.MACRO PlayerCommandData.waitForSnap2PointStance
    .DB $EC
.ENDM

.MACRO PlayerCommandData.motion time
    .DB $ED
    .DB time
.ENDM

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