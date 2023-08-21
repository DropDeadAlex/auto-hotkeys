#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%


; Initialize variables
scrollActive := false
scrollTimer := 0

; Triggered when the backward mouse button is pressed
XButton2::
    ; Set scrollActive to true to indicate scrolling is active
    scrollActive := true

    ; Get the current mouse position
    MouseGetPos, prevX, prevY

    ; Hold Alt key
    SendInput, {Alt down}

    ; Start a timer to release Alt key after 2 seconds of no scrolling
    scrollTimer := A_TickCount + 2000
    
    ; Wait for scrolling action
    While (scrollActive) {
        ; Check for mouse movement
        MouseGetPos, currentX, currentY
        if (currentX != prevX || currentY != prevY) {
            ; Mouse scrolled
            SendInput, {Alt up}
            Sleep, 50 ; Delay to ensure Alt key is released before sending Tab
            SendInput, {Blind}{Tab}
            break
        }
        
        ; Check if the timer has reached 2 seconds
        if (A_TickCount >= scrollTimer) {
            ; No scrolling occurred for 2 seconds, release Alt key and exit the loop
            scrollActive := false
            SendInput, {Alt up}
            break
        }
        
        ; Check for a scroll event every 50 milliseconds
        Sleep, 50
    }
    
    return
