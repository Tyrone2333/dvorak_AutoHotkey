
#SingleInstance force

dvorakActive := true
DVORAK_DIR := "F:\Code\html code\dvorak_AutoHotkey"

 ;Run "%DVORAK_DIR%/qwer.ahk"

Run "my_dvorak.exe"

;; #Numpad0::
;; alt 加数字键 0关闭
!Numpad0::
	dvorakActive := false
	;; SoundPlay, %A_WinDir%\Media\Windows Error.wav
	SoundPlay *64
	Process,Close,my_dvorak.exe
return

!Numpad1::
	SoundPlay *48
	Run "my_dvorak.exe"
return