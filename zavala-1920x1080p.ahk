CoordMode, Mouse, Screen
^j::


; VARIABLES
tokensX := 1330
tokensY := 255

engramX := 1785
engramY := 115

weaponX = 520
kinY := 390
energyY := 515
powerY := 640

weaponsArr := [kinY, energyY, powerY]


armorX := 1395
helY := 265
armsY := 385
chestY := 515
bootsY := 635
classY := 760

armorsArr := [helY, armsY, chestY, bootsY, classY]


Loop
{
	;# turn in tokens
	MouseMove, tokensX, tokensY
	Sleep, 250
	;# this loop is doing half the count, so 100 to do 50 engrams
	Loop, 50
	{
		;# first 10
		MouseMove, tokensX, tokensY
		Sleep, 250
		Click, tokensX, tokensY
		Sleep, 1000

		;# second 10
		Click, tokensX, tokensY
		Sleep, 1000

		;# engram
		MouseMove, engramX, engramY
		Sleep, 250
		Click, engramX, engramY
		Sleep, 1500
	}


	;# dismantle it all
	;# open menu
	Send, {f1}
	Sleep, 1250

	;# dismantle 8 times each slot

	;# weapons
	For index, Yvalue in weaponsArr
	{
		MouseMove, weaponX, Yvalue
		Sleep, 250
		MouseMove, weaponX-90, Yvalue
		Sleep, 100
		Loop, 8
		{
			Send, {f Down}
			Sleep, 1500
			Send, {f Up}
			Sleep, 250
		}
		Sleep, 125
	}


	;# armor
	For index, Yvalue in armorsArr
	{
		MouseMove, armorX, Yvalue
		Sleep, 250
		MouseMove, armorX+90, Yvalue
		Sleep, 100
		Loop, 8
		{
			Send, {f Down}
			Sleep, 1500
			Send, {f Up}
			Sleep, 250
		}
		Sleep, 125
	}

	;# go back to zavala
	Send, {f1}
	Sleep, 1250
}
return
Esc::ExitApp