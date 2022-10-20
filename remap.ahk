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
; space:: space
#if, GetKeyState("LAlt", "P")
	Send, {LAlt Down}
	d:: SendInput, {Left}
	s:: Down
	r:: Right
	t:: Up
 
	; #if, GetKeyState("BackSpace", "P")
		+!d:: Send, ^+{Left}
		+!r:: Send, ^+{Right}
		!d::	Send, ^{Left}
		!r::	Send,	^{Right}
	; #if

	; i:: Left
	e:: Down
	a:: Right
	,:: Up

	l:: SendInput, Home
	c:: SendInput, {End}
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

	m:: 	  NumpadMult
	sc028:: NumpadDiv
	w:: 	  NumpadDiv
#if 


; Programmer Symbols ---------------------- 
#if, not GetKeyState("BackSpace", "P")
	; <!space:: Send {space}

	; <!?::		Send {Raw}#
	; <!,::		Send {Raw}<
	; <!.::		Send {Raw}>

	; <!t::		Send {Raw}/
	; <!c::		Send {Raw}}
	; <!p::		Send {Raw}]

	; <!i::		Send {Raw}[
	; <!e::		Send {Raw}(
	; <!a::		Send {Raw})
	; <!o::		Send {Raw}{
	; <!u::		Send {Raw}&

	; <!m::		Send {Raw}`%
	; <!d::		Send {Raw}$
	; <!s::		Send {Raw}=
	; <!r::		Send {Raw}+
	; <!n::		Send {Raw}@
	; <!sc028::Send {Raw}:

	; <!z::		Send {Raw};
#if


; Function Keys  ----------------------
BS & PrintScreen:: PrintScreen
AppsKey:: Run, calc.exe

Launch_App2::	F13
PrintScreen::	Send {F14}
CapsLock::		Send {F15}
Pause:: 			Send {F16}

>#?:: 	Send {F1}
>#,:: 	Send {F2}
>#.:: 	Send {F3}
>#h:: 	Send {F4}

>#i:: 	Send {F5}
>#e:: 	Send {F6}
>#a:: 	Send {F7}
>#o:: 	Send {F8}

>#y:: 	Send {F9}
>#sc2D::	Send {F10}
>#j:: 	Send {F11}
>#b:: 	Send {F12}



; Drevo Adaptation  ----------------------
end::				send {end}
end & Right::	send {NumpadEnter}


<!sc02B:: 	Send {Raw}\
<!+sc02B:: 	Send {Raw}|

<!y:: 	Send ^{y}
<!sc2D:: Send ^{z}


; win volume ---------------------------
#WheelUp::	Send {Volume_Up}  ; Wheel over taskbar: increase/decrease volume.
#WheelDown::Send {Volume_Down} ;



; --------- Sleep/Suspend -----------------------

^#L:: DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)