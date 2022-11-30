#SingleInstance force

; tooltip modifier keys ---------------------
settimer,checkmodifiers,100
return

checkmodifiers:
  tooltip % modifiers()
  return

modifiers()
{
  GetKeyState, varLWIN, LWIN, P
  GetKeyState, varRWIN, RWIN, P
  GetKeyState, varLSHIFT, LSHIFT, P
  GetKeyState, varRSHIFT, RSHIFT, P
  GetKeyState, varLALT, LALT, P
  GetKeyState, varRALT, RALT, P
  GetKeyState, varLCTRL, LCTRL, P
  GetKeyState, varRCTRL, RCTRL, P
  
  return % (varLWIN   == "D" ? "LWIN "   : "") 
         . (varRWIN   == "D" ? "RWIN "   : "")
         . (varLSHIFT == "D" ? "LSHIFT " : "")
         . (varRSHIFT == "D" ? "RSHIFT " : "")
         . (varLALT   == "D" ? "LALT "   : "")
         . (varRALT   == "D" ? "RALTT "  : "")
         . (varLCTRL  == "D" ? "LCTRL "  : "")
         . (varRCTRL  == "D" ? "RCTRL  " : "")
}