#SingleInstance force
#InstallKeybdHook
;#InstallMouseHook


; 按键说明
/*

# Win (Windows 徽标键). 在 v1.0.48.01+, 对于 Windows Vista 及以上版本, 包含 Windows 键的热键 (例如 #a) 会等待 Windows 键被释放后才发送任何包含 "L" 键击的文本. 这样避免了这种热键中的 Send 锁定 PC. 这种行为适用于除 SendPlay (这里不需要) 和 盲从模式 外的所有发送模式. 
! Alt 
^ Control 
+ Shift 

*/

;;;;;;;;;;;;;;;;;;;;;;;; dvorak ;;;;;;;;;;;;;;;;;;;;;;;;;
;; home row
;q::q
w::,
e::.
r::u
t::c
y::f
u::y
i::r
o::l
p::p
[::/
+}::Send {]}
]::[
;; middle row
;a::a
s::o
d::e
f::i
g::g
h::d
j::h
k::t
l::n
`;::s
+"::Send {'}
'::"
;; bottom row 需转义`;
+z::Send {`}}
z::{
x::x
c::k
v::j
b::;
n::b
;m::m
,::w
.::v
/::z
/*
;;交换字母区上方的数字,因中文输入法问题暂时放弃交换数字
#usehook

+!::Send {1}
1::!
+@::Send {2}
2::@
+#::Send {3}
3::#
+$::Send {4}
4::$
+%::Send {5}
5::SendInput `%
;;5::Send {`%} ;;这一行一直报错
+^::Send {6}
6::^
+&::Send {7}
7::&
+*::Send {8}
8::*
+(::Send {9}
9::(
+)::Send {0}
0::)
*/
+(::Send {9}
9::(

;  发送箭头函数,需视 ide 的自动补全调整  
:*:00::
     Send, `(res{Right} `=> {`{} {Left} {Enter}
return


;	=Dvorak Hot Key Fixes ( Autohotkey )  
;	替换CTRL ALT WIN 键
;--------------------------------------
;----------------- CTRL KEY

*^c::Send ^c
*^v::Send ^v
*^x::Send ^x
*^z::Send ^z
*^w::Send ^w
*^s::Send ^s
*^f::Send ^f
*^d::Send ^d

;----------------- ALT KEY

*![::Send !-
*!]::Send !=

*!'::Send !q
*!,::Send !w
*!.::Send !e
*!p::Send !r
*!y::Send !t
*!f::Send !y
*!g::Send !u
*!c::Send !i
*!r::Send !o
*!l::Send !p
*!/::Send ![
*!=::Send !]

*!o::Send !s
*!e::Send !d
; 由于 Gmail 前面有字母,在中文状态下会被输入法输出中文,所以邮箱用 QQ邮箱
*!u::
    Send, 424021424@qq.com
return

*!i::Send !g
*!d::Send !h
*!h::Send !j
*!t::Send !k
*!n::Send !l
*!s::Send !`;
*!-::Send !'

*!`;::Send !z
*!q::Send !x
*!j::Send !c
*!k::Send !v
*!x::Send !b
*!b::Send !n
*!m::Send !m
*!w::Send !,
*!v::Send !.
*!z::Send !/

;----------------- WINDOWS KEY

*#e::Send #e
*#d::Send #d
*#r::Send #r ;;cmd

;----------------- 小键盘
::Numpad0Numpad0::Send {00}


;END Dvorak Hot Key Fixes