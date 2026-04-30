; ESCで強制停止
Esc::ExitApp

; キーの並びでaを月、sを火、dを水、fを木、gを金とする
;月
a::
	weekloop()

;火
s::
	Loop, 4
	{
		dayfunc()
	}
	Send, {Tab 24}
	weekloop()

;水
d::
	Loop, 3
	{
		dayfunc()
	}
	Send, {Tab 24}
	weekloop()
;木
f::
	Loop, 2
	{
		dayfunc()
	}
	Send, {Tab 24}
	weekloop()
;金
g::
	dayfunc()
	Send, {Tab 24}
	weekloop()

dayfunc(){
	; 平日入力（8:30 - 17:00 / 45分休憩）
    	Send, 08{Tab}30{Tab}
    	Send, 17{Tab}00{Tab}
    	Send, 00{Tab}45{Tab}
    	Send, 00{Tab}00
	
	; 次の日へ（1日分移動）
    	Send, {Tab 5}
	return
}

weekloop(){
	Loop, 4
	{
		Loop, 5
		{
			dayfunc()
		}
		Send, {Tab 24}
	}
	ExitApp
}

