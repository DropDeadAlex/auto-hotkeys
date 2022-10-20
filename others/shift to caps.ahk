LShift::
   KeyWait, BackSpace                      ; wait to be released
   KeyWait, BackSpace, D T0.2              ; and pressed again within 0.2 seconds
   if ErrorLevel
      return
   else if (A_PriorKey = "BackSpace")
      SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"
   return