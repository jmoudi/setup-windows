#SingleInstance force
#InstallKeybdHook
#InstallMouseHook
SetBatchLines, -1
SetCapsLockState, Off
SetNumLockState, On
SetScrollLockState, Off

;Menu, Tray, Icon, %A_WorkingDir%\Icons\main1.ico
; ============================================== FUNCTIONS ============================================== ;
sendKey(string){
    Critical
    SendMode Input
    SendRaw %string%
    return
}
; ============================================== TOTAL REPLACEMENTS ============================================== ;
CapsLock::Enter
NumLock::RAlt
Alt::Return
LWin::LCtrl
F1::!F1
F12::!F11
NumpadDot::.

/* 
GERMAN
!ü::sendKey("ü") ; è U+00E8, È U+00C8
!ö::sendKey("ö") ; é U+00E9, É U+00C9
!ä::sendKey("ä") ; à U+00E0, À U+00C0
*/
; ============================================== GENERAL ============================================== ;
;F12::Run Calc.exe
#If (WinActive("ahk_exe mintty.exe"))
    ^v::SendInput +{Insert}
    ;^f::Send +{Insert}
    !s::
    SendInput git clone {Space}^v
    SendInput {Enter}
#If (!WinActive("ahk_exe everything.exe"))
    !y::SendInput !z
    !z::SendInput !y


#If WinActive("ahk_exe everything.exe")
    ^t::sendKey("t") ; disable "Always on Top"
; ============================================== BROWSERS ============================================== ;
#If (!WinActive("ahk_exe Code.exe"))
    !q::SendInput ^{PgUp}
    !w::SendInput ^{Home}
    !e::SendInput ^{PgDn}
    !r::SendInput !{Left}
    !t::SendInput !{Right}
    !1::SendInput {F2}
    !2::SendInput ^{w}
    !3::SendInput {F5}
    !4::SendInput site:
    +!4::SendInput inurl:
    !5::SendInput intitle:
    +!5::SendInput inanchor:"
    ^+r::SendInput ^+{j} 
    ^#a::Run %A_WorkingDir%\ahk_START_ALL.bat
#If WinActive("ahk_exe firefox.exe")
	;$!c::Saver() ;$+d::Saver()
#If WinActive("ahk_exe chrome.exe")
	Hotkey, $!LButton, %nofunc%, B0 P5 T5 ;$+d::Saver()
	^+c::^+i
#If
