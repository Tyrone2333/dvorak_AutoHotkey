
#SingleInstance force

dvorakActive := true
DVORAK_DIR := "F:\Code\html code\dvorak_AutoHotkey"

 ;Run "%DVORAK_DIR%/qwer.ahk"

Run "my_dvorak.exe"

; �����л�dvorak��qwer����,��ʹ��qwer����ʱ����������ʾ
#Numpad2::
dvorakActive := !dvorakActive
if(!dvorakActive){
	SoundPlay, %A_WinDir%\Media\Windows ��̾��.wav
	SoundPlay *64  ; �Ǻ�(��Ϣ��) . �������������, ��ʹ�������������������..
	Process,Close,my_dvorak.exe
}else{
	Run "%DVORAK_DIR%/my_dvorak.exe"
}
return