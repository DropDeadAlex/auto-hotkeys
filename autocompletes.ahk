#SingleInstance, Force
#NoTrayIcon
SendMode Input
; When you type the text wrapped in colons, it will turn into the text after the colons

; —————————— css autocompletes ——————————
::bsb-::
    send, border: solid black 1px;
return

; —————————— Git autocompletes ——————————
::/ad::git add .
::/ca::git commit -a
::/ame::git commit -a --amend --no-edit

::/psh::git push origin main
::/puu::git pull origin main

::---end::
    ExitApp

Return