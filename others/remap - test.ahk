#SingleInstance force

; ^	=	Control
; +	=	Shift
; !	=	Alt

; BackSpace Stuff ----------------------

; ~RShift::
; Input, UserInput, V T3 L4 C, {enter}.{esc}{tab}, btw,otoh,fl,ahk,ca

; If InStr(ErrorLevel, "EndKey:")
; {
;     MsgBox, You entered "%UserInput%" and terminated the input with %ErrorLevel%.
;     return
; }
; if (UserInput = "btw")
;     Send, {backspace 4}by the way
; else if (UserInput = "otoh")
;     Send, {backspace 5}on the other hand
; else if (UserInput = "fl")
;     Send, {backspace 3}Florida
; else if (UserInput = "ca")
;     Send, {backspace 3}California
; else if (UserInput = "ahk")
;     Run, https://www.autohotkey.com
; return


~LShift::
	Input, SingleKey, L1 T3 C, {LControl}{RControl}{LAlt}{RAlt}{LShift}{RShift}{LWin}{RWin}{AppsKey}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}{Pause}
	if !(SingleKey = "")
		Send, {Shift Down}%SingleKey%{Shift up}
return

; GetKeyState, LAlt_bState, Shift


; #if, InStr(LAlt_bState, "D")
; #If, GetKeyState("tab", "P")

; LAlt:: 
; 	send {LAlt up}
; 	LAlt_bState := GetKeyState("LAlt", "P")
; 	if LAlt_bState = 0
; 		o:: ToolTip, opassa here %LAlt_bState%.
; 	Return
; Return

; #if



; #if, GetKeyState("LAlt", "P")
; 	send {Blind}{LAlt Up}

; 	LAlt_bState := GetKeyState("LAlt", "P")
; 	; if LAlt_bState = 0
; 		o:: ToolTip, opassa here %LAlt_bState%.
; #if

; LShift::
;     if GetKeyState("LShift")
;         Send {Blind}{LShift Up}
;     else
;         Send {Blind}{LShift Down}
; return
