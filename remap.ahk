#SingleInstance force

; ^	=	Control
; +	=	Shift
; !	=	Alt

; BackSpace Stuff ----------------------------
BS::		BS
<!BS::		Send ^{bs}				; backWord()
^+BS::		Send +{Delete}


; Shift tap dance() ---------------------------
#if, not GetKeyState("BackSpace", "P")
	~LShift::									; shift singleToggle
		KeyWait, LShift
		if (A_TimeSinceThisHotkey < 250)
		{
			Input, SingleKey, L1 T3 C, {LControl}{RControl}{LAlt}{RAlt}{LShift}{RShift}{LWin}{RWin}{AppsKey}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{CapsLock}{NumLock}{PrintScreen}{Pause}
			
			if !(SingleKey = "")
				Send, +%SingleKey%

			if InStr(ErrorLevel, "BackSpace")
				send {BackSpace}
		}
		else if (A_ThisHotkey = A_PriorHotkey and A_TimeSincePriorHotkey < 1100)
		{
      		SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
		}
	Return
#if


; Arrow Keys FTW ------------------------------
#if, GetKeyState("BackSpace", "P")
	d::		Left
	s::		Down
	r::		Right
	t::		Up
 
	+!d::	Send ^+{Left}
	+!r::	Send ^+{Right}
	!d::	Send ^{Left}
	!r::	Send ^{Right}
	
	i::		Left
	e::		Down
	a::		Right
	,::		Up

	l::		Home
	c::		End
	p::		PgUp
	n::		PgDn

	m::		MouseClick, Left
	sc028::	MouseClick, Right
	o::		Send {AppsKey}
	.::		Send {Escape}
	g::		Send {Enter}
	!g::	Send +{Enter}
#if


; Numpad Map ----------------------------------
Tab::Tab
Tab & ralt:: !Tab

#if, GetKeyState("Tab", "P")
	v:: 	Numpad1
	g:: 	Numpad2
	f:: 	Numpad3
	d:: 	Numpad4
	s:: 	Numpad5
	r:: 	Numpad6
	l:: 	Numpad7
	t:: 	Numpad8
	c:: 	Numpad9
	q:: 	Numpad0
	
	p:: 	NumpadSub
	n:: 	NumpadAdd

	m::		NumpadMult
	sc028::	NumpadDiv
	w::		NumpadDiv
#if 


; Programmer Symbols ------------------------
#if, not GetKeyState("BackSpace", "P")
	<!space::	Send {space}

	<!?::		Send {Raw}#
	<!,::		Send {Raw}<
	<!.::		Send {Raw}>

	<!l::		Send {Raw}*
	<!t::		Send {Raw}/
	<!c::		Send {Raw}}
	<!p::		Send {Raw}]

	<!i::		Send {Raw}[
	<!e::		Send {Raw}(
	<!a::		Send {Raw})
	<!o::		Send {Raw}{
	<!u::		Send {Raw}&

	<!m::		Send {Raw}`%
	<!d::		Send {Raw}$
	<!s::		Send {Raw}=
	<!r::		Send {Raw}+
	<!n::		Send {Raw}@
	<!sc028::	Send {Raw}:

	<!b::		Send {Raw}!
	<!z::		Send {Raw};
#if


; Function Keys  ---------------------------
BS & PrintScreen::	PrintScreen
AppsKey:: 			Run, calc.exe

Launch_App2::	F13
PrintScreen::	Send {F14}
CapsLock::		Send {F15}
Pause::			Send {F16}

+#?::	Send {F1}
+#,::	Send {F2}
+#.::	Send {F3}
+#h::	Send {F4}

+#i::	Send {F5}
+#e::	Send {F6}
+#a::	Send {F7}
+#o::	Send {F8}

+#y::	Send {F9}
+#sc2D::Send {F10}
+#j::	Send {F11}
+#b::	Send {F12}



; Drevo Adaptation  ----------------------
end::			send {end}
end & Right::	send {NumpadEnter}


<!sc02B::		Send {Raw}\
<!+sc02B::		Send {Raw}|

<!y::	 		Send ^{y}
<!sc2D:: 		Send ^{z}


; win volume ---------------------------
#WheelUp::		Send {Volume_Up}  ; Wheel over taskbar: increase/decrease volume.
#WheelDown::	Send {Volume_Down} ;



; --------- Sleep/Suspend -----------------------
^#L:: DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)



; commands -----------------------
~RControl::
	KeyWait, RShift
	if (A_TimeSinceThisHotkey < 250)
	{
		Input, userInput, T3 L5 C, , end
		if (userInput = "end")
			ExitApp
	}
return