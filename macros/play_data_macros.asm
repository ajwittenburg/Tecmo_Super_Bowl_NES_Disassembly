

_F{_PLAY_DATA_MACROS

.MACRO PlayerCommandData.jumpTo newLocation
    .DB $FF
    .WORD newLocation
.ENDM 

_F}_PLAY_DATA_MACROS