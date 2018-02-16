
#SingleInstance force

dvorakActive := true
DVORAK_DIR := "F:\Code\html code\dvorak_AutoHotkey"

 ;Run "%DVORAK_DIR%/qwer.ahk"

Run "my_dvorak.exe"

#Numpad0::
	dvorakActive := false
	SoundPlay, %A_WinDir%\Media\Windows ��̾��.wav
	SoundPlay *64
	Process,Close,my_dvorak.exe
return

#Numpad1::
	SoundPlay *48
	Run "%DVORAK_DIR%/my_dvorak.exe"
return