#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;	^	=	Control	 
;	+	=	Shift	 
;	!	=	Alt		

; win state controls ---------------------------
#Down::
  WinGet,WinState,MinMax, A	

  Switch WinState
  {
  Case 0:						; is restored (neither minimized nor maximized)
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

  Switch WinState
  {
  Case 0:						; is restored (neither minimized nor maximized)
    Send, #{Up}
  Case 1:						; is maximized
    Send, #{Down}
  Case -1:					; is minimized
    Send, #{Up}
    WinRestore, A
  return
	}
Return

; win volume ---------------------------
~XButton2 & WheelUp::		Send {Volume_Up} ; Wheel over taskbar: increase/decrease volume.
~XButton2 & WheelDown::	Send {Volume_Down} ;

; mixer popup
^AppsKey:: Send, !^+{v}
