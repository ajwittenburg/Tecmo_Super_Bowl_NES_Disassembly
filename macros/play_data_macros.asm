

_F{_PLAY_DATA_MACROS

.MACRO PlayerCommandData.Helper.addCommandAndLocationXY commandByte, xByte, yByte
    .DB commandByte
    .DB yByte
    .DB xByte
.ENDM

;;;;;;;;;;;;;;;

.MACRO PlayerCommandData.setPositionFromKickoffB0 y,x
    PlayerCommandData.Helper.addCommandAndLocationXY $B0, x, y
.ENDM

.MACRO PlayerCommandData.setPositionFromKickoffB1 y,x
    PlayerCommandData.Helper.addCommandAndLocationXY $B1, x, y
.ENDM

.MACRO PlayerCommandData.moveDuringKickoff y,x
    PlayerCommandData.Helper.addCommandAndLocationXY $B4, x, y    
.ENDM

.MACRO PlayerCommandData.dropback y,x
    PlayerCommandData.Helper.addCommandAndLocationXY $C0, x, y
.ENDM

.MACRO PlayerCommandData.COACOMPassTiming startTime, endTime, takeSackChance
    .DB $C1
    .DB startTime
    .DB endTime
    .DB takeSackChance
.ENDM

.MACRO PlayerCommandData.celebrate time
    .DB $C4
    .DB time
.ENDM

.MACRO PlayerCommandData.cry time
    .DB $C5
    .DB time
.ENDM

.MACRO PlayerCommandData.COMJumpTo newLocation
    .DB $C7
    .WORD newLocation
.ENDM

.MACRO PlayerCommandData.basedOnJuiceCOMJumpTo juiceCompareValue, newLocation
    .DB $C8
    .WORD newLocation
    .DB juiceCompareValue
.ENDM

.MACRO PlayerCommandData.COACOMJumpTo newLocation
    .DB $CA
    .WORD newLocation
.ENDM

.MACRO PlayerCommandData.block
    .DB $CC
.ENDM

.MACRO PlayerCommandData.pullRelative y,x
    PlayerCommandData.Helper.addCommandAndLocationXY $CD, x, y
.ENDM

.MACRO PlayerCommandData.pullBallPlacement y,x
    PlayerCommandData.Helper.addCommandAndLocationXY $CE, x, y
.ENDM

.MACRO PlayerCommandData.pullMiddleOfField y,x
    PlayerCommandData.Helper.addCommandAndLocationXY $CF, x, y
.ENDM

.MACRO PlayerCommandData.setPositionBallPlacement y,x
    PlayerCommandData.Helper.addCommandAndLocationXY $D0, x, y
.ENDM

.MACRO PlayerCommandData.setPositionMiddleOfField y,x
    PlayerCommandData.Helper.addCommandAndLocationXY $D1, x, y
.ENDM

.MACRO PlayerCommandData.hikeUnderCenter
    .DB $D2
.ENDM

.MACRO PlayerCommandData.hikeFromShotgun
    .DB $D3
.ENDM

.MACRO PlayerCommandData.takeSnapUnderCenter
    .DB $D4
.ENDM

.MACRO PlayerCommandData.takeSnapFromShotgun
    .DB $D5
.ENDM

.MACRO PlayerCommandData.takeSnapForFGXP
    .DB $D6
.ENDM

.MACRO PlayerCommandData.moveRelative y,x
    PlayerCommandData.Helper.addCommandAndLocationXY $D7, x, y
.ENDM

.MACRO PlayerCommandData.moveBallPlacement y,x
    PlayerCommandData.Helper.addCommandAndLocationXY $D8, x, y    
.ENDM

.MACRO PlayerCommandData.moveMiddleOfField y,x
    PlayerCommandData.Helper.addCommandAndLocationXY $D9, x, y
.ENDM

.MACRO PlayerCommandData.runRush
    .DB $DA
.ENDM

.MACRO PlayerCommandData.verticallyMirrorBallCarrier
    .DB $DB
.ENDM

.MACRO PlayerCommandData.passRush
    .DB $DD
.ENDM

.MACRO PlayerCommandData.computerTakesControl
    .DB $DF
.ENDM

.MACRO PlayerCommandData.setRS value
    .DB $E0
    .DB value
.ENDM

.MACRO PlayerCommandData.setMS value
    .DB $E1
    .DB value
.ENDM

.MACRO PlayerCommandData.boostRP boost
    .DB $E2
    .DB boost
.ENDM

.MACRO PlayerCommandData.boostRS boost
    .DB $E3
    .DB boost
.ENDM

.MACRO PlayerCommandData.playerTakesControl
    .DB $E4
.ENDM

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