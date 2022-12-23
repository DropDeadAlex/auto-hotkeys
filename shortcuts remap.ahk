#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;	^	=	Control	 
;	+	=	Shift	 
;	!	=	Alt		

#Down::
	WinGet,WinState,MinMax, A	

	Switch WinState
	{
		Case 0:									; neither minimized nor maximized
			WinMinimize, A
		Case 1:									; is maximized
			Send, #{Down}
		Case -1:								; is minimized
			WinRestore, A
	}
Return



; win volume ---------------------------
~XButton2 & WheelUp::		Send {Volume_Up} ; Wheel over taskbar: increase/decrease volume.
~XButton2 & WheelDown::	Send {Volume_Down} ;