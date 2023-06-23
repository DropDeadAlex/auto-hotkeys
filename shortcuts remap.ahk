#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;	!	=	Alt     +	=	Shift     ^	=	Control


; win state controls ----------------------------------------------
#Down::
  WinGet,WinState,MinMax, A	

  Switch WinState {
    Case 0:						; is restored   (neither minimized nor maximized)
      WinMinimize, A
    Case 1:						; is maximized
      Send, #{Down}
    Case -1:					; is minimized
      Send, #{Up}
      WinRestore, A
    return
	}
Return

#Up::
  WinGet,WinState,MinMax, A	

  Switch WinState {
    Case 0:						; is restored   (neither minimized nor maximized) 
      Send, #{Up}
    Case 1:						; is maximized
      Send, #{Down}
    Case -1:					; is minimized
      Send, #{Up}
      WinRestore, A
    return
	}
Return


; win volume ------------------------------------------------
~XButton2 & WheelUp::		Send {Volume_Up}
~XButton2 & WheelDown::	Send {Volume_Down}

; mixer popup
+AppsKey:: Send, !^+{v}       ; earTrumpet


; arrow keys ------------------------------------------------
F13 & Left::  Up
F13 & Right:: Down


; photoshop specific  ----------------------------------------
#IfWinActive, ahk_class Photoshop
  Media_Play_Pause:: Space
  ^y::    send ^{z}     ; undo()
  ^z::    send ^+{y}    ; redo()
  ^sc2D:: send ^{x}     ; cut()
  ^j::    send ^{c}     ; copy()
  ^b::    send ^{v}     ; paste()
#if


; premiere specific  ----------------------------------------
#IfWinActive, ahk_exe Adobe Premiere Pro.exe
  ^z::    send ^+{z}     ; redo()
#if
