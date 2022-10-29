#SingleInstance force

; ^	=	Control
; +	=	Shift
; !	=	Alt

; BackSpace Stuff ----------------------
BS::				BS
<!BS::			Send ^{bs}				; backWord()
^+BS:: 			Send +{Delete}


; ~LShift::									; doubleShift to capsLock()
; 	KeyWait, LShift 
;    If (A_ThisHotkey = A_PriorHotkey and A_TimeSincePriorHotkey < 400)
;       SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
; Return


; Arrow Keys FTW ---------------
#if, GetKeyState("BackSpace", "P")
	d::		Left
	s::		Down
	r::		Right
	t::		Up

	BackSpace::

		if GetKeyState("Tab", "P") {

			; +!d::	Send ^+{Left}
			; +!r::	Send ^+{Right}
			d::	Send ^{Left}
			r::	Send ^{Right}
		}
	Return
	
	i:: Left
	e:: Down
	a:: Right
	,:: Up

	l:: Home
	c:: End
	p:: PgUp
	n:: PgDn
#if


; Numpad Map ----------------------------------


; ; Programmer Symbols ---------------------- 
; lalt:: lalt




BS & PrintScreen:: PrintScreen


