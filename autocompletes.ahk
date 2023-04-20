#SingleInstance, Force
#NoTrayIcon
SendMode Input
; When you type the text wrapped in colons, it will turn into the text after the colons
; * = don't require a delimiter character (space)
; ? = triggers even if it's in the middle of a word.

; —————————— css autocompletes ——————————
:*:bsb-::border: solid black 1px;

; —————————— Git autocompletes ——————————
::/ad::git add .
::/ca::git commit -a
::/ame::git commit -a --amend --no-edit

::/psh::git push origin main
::/puu::git pull origin main

; —————————— url ——————————
:*?:.vap::.vercel.app

; —————————— internal ——————————
::---end::
  ExitApp
Return