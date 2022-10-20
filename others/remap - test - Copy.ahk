#SingleInstance force

; ^	=	Control
; +	=	Shift
; !	=	Alt

; BackSpace Stuff ----------------------
BS::				BS
RShift & BS::	Send ^{bs}				; backWord()
<!BS::			Send ^{bs}				; backWord()
^+BS:: 			Send +{Delete}
~LShift::									; doubleShift to capsLock()
	KeyWait, LShift 
   If (A_ThisHotkey = A_PriorHotkey and A_TimeSincePriorHotkey < 400)
      SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
Return

; Arrow Keys FTW ---------------
#if, GetKeyState("BackSpace", "P")
	SendInput, {lalt Up}
	d:: Left
	s:: Down
	r:: Right
	t:: Up

	!d:: Send, ^{Left}
	!r:: Send, ^{Right}
	
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
Tab::Tab
Tab & ralt:: !Tab

#if, GetKeyState("Tab", "P")
	v:: Numpad1
	g:: Numpad2
	f:: Numpad3
	d:: Numpad4
	s:: Numpad5
	r:: Numpad6
	l:: Numpad7
	t:: Numpad8
	c:: Numpad9
	q:: Numpad0
	
	p:: NumpadSub
	n:: NumpadAdd
#if 


; ; Programmer Symbols ---------------------- 
; lalt:: lalt

#if, GetKeyState("Alt", "P") and not GetKeyState("BackSpace", "P")

	<!i:: Send {Raw}[
	<!e:: Send {Raw}(
	<!a:: Send {Raw})
	<!o:: Send {Raw}{
#if


BS & PrintScreen:: PrintScreen


