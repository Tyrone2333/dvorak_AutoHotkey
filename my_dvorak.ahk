#SingleInstance force
;#InstallKeybdHook
;#InstallMouseHook


;;;;;;;;;;;;;;;;;;;;;;;; dvorak ;;;;;;;;;;;;;;;;;;;;;;;;;
;; home row
q::;
w::,
e::.
r::p
t::y
y::f
u::g
i::c
o::r
p::l
[::/
;; 中行
;a::a
s::o
d::e
f::u
g::i
h::d
j::h
k::t
l::n
`;::s
+"::Send {'}
'::"
;; 下行封号需转义`;
+z::Send {[}
z::{
x::q
c::j
v::k
b::x
n::b
;m::m
,::w
.::v
/::z

;;交换字母区上方的数字
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
*!u::Send !f
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
;END Dvorak Hot Key Fixes