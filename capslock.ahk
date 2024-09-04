#Requires AutoHotkey 1.0

SetCapsLockState, alwaysoff ; Offs Capslock

; CapsLock as Ctrl
*CapsLock::
    Send {Blind}{Ctrl Down}
    cDown := A_TickCount
Return

*CapsLock up::
    If ((A_TickCount-cDown) < 200) 
        Send {Blind}{Ctrl Up}{Esc}
    Else
        Send {Blind}{Ctrl Up}
Return
    

; #Requires AutoHotkey 2.0
;
; *CapsLock::
; {
;     Send "{LControl down}"
; }
;
; *CapsLock up::
; {
;     Send "{LControl Up}"
;
;
; 	if (A_TimeSincePriorHotkey < 200)
; 	{
; 		Suspend "1"
; 		Send "{Esc}"
; 		Suspend "0"
; 	}
; }
