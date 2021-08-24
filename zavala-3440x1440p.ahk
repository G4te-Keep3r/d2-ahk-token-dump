CoordMode, Mouse, Screen
^j::


; VARIABLES
tokensX := 2221
tokensY := 334

engramX := 2826
engramY := 147

weaponX = 1137
kinY := 514
energyY := 678
powerY := 848

weaponsArr := [kinY, energyY, powerY]


armorX := 2303
helY := 350
armsY := 516
chestY := 686
bootsY := 841
classY := 1010

armorsArr := [helY, armsY, chestY, bootsY, classY]


Loop
{
	;# turn in tokens
	MouseMove, tokensX, tokensY
	Sleep, 250
	;# this loop is doing half the count, so 100 to do 50 engrams
	Loop, 100
	{
		;# first 10
		Click, tokensX, tokensY
		Sleep, 250

		;# second 10
		Click, tokensX, tokensY
		Sleep, 1000

		;# engram
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
		MouseMove, weaponX-140, Yvalue
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
		MouseMove, armorX+140, Yvalue
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