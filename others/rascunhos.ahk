; doubleShift to capsLock()  --------------------
~LShift::
   If (A_ThisHotkey = A_PriorHotkey and A_TimeSincePriorHotkey < 200)
      SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"


#If, GetKeyState("CapsLock", "P") ;Your CapsLock hotkeys go below

	w::Up
	a::Left
	s::Down
	d::Right
	q::Send % (A_PriorHotKey = A_ThisHotkey && A_TimeSincePriorHotkey < 200) ? "{Blind}^{Home}" : "{Blind}{PGUP}"
	e::Send % (A_PriorHotKey = A_ThisHotkey && A_TimeSincePriorHotkey < 200) ? "{Blind}^{End}" : "{Blind}{PGDN}"

#if 


; backspace diretional altModificator --------------------
BS & d::
	if GetKeyState("Alt", "P")
		Send ^{Left}
	Else
		Send {blind}{Left}
		; SendInput, {Left}
Return


; check for currentwindos --------------------
LAlt::
	if WinActive("ahk_class Premiere Pro"){
		SendInput, {lalt Down}
		SendInput, {SC0E8} 
		SendInput, {e} 
		ToolTip, Loooo premiere
	}
	Else {
		SendInput, {lalt Down}	
		ToolTip, anyother softwaar 	
	}

	
	KeyWait, LAlt
		SendInput, {LAlt up}
		SendInput, {SC0E8 up}
Return


!e:: 
	if WinActive("ahk_class Premiere Pro"){
		
	}
	Else {
		SendInput, {alt Down}e{AltUp}
	}
Return


; Lock ----
DllCall("User32\LockWorkStation")
Run rundll32.exe user32.dll`,LockWorkStation

; Sleep ----
DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)
Run rundll32.exe powrprof.dll`,SetSuspendState 0,1,0
	
; Hibernate ----
DllCall("PowrProf\SetSuspendState", "int", 1, "int", 0, "int", 0)