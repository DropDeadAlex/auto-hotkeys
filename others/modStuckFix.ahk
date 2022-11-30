; get from ahk forum: https://www.autohotkey.com/boards/viewtopic.php?t=81667

#SingleInstance force

SetTimer KeyStuckFix, 2222

KeyStuckFix: 
if (A_TimeIdlePhysical > 777)
SendEvent {Shift Up}{Ctrl Up}{Alt Up}
Return