

_F{_PLAY_DATA_MACROS

.MACRO PlayerCommandData.loopTo newLocation
    .DB $FE
    .DB newLocation-$+1
.ENDM

.MACRO PlayerCommandData.jumpTo newLocation
    .DB $FF
    .WORD newLocation
.ENDM 

_F}_PLAY_DATA_MACROS