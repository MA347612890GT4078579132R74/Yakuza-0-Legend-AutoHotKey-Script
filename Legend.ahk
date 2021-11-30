#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
F11::Reload


Buy()
{
	Send {Enter down} 
	Sleep, 4000
	Send {Enter up}
	Sleep, 250
	Send {Enter down}
	Sleep, 50
	Send {Enter up}
	Sleep, 50
	Send {Enter down}
	Sleep, 50
	Send {Enter up}
	Sleep, 250
}


Move(D)
{
	Send {%D% up}
	Sleep, 250 
	Send {%D% down}
	Sleep, 250 
}

BuyNMove(Direction)
{
	Buy()
	Sleep, 500
	Move(Direction)
	Sleep, 50
}

BecomeLegend()
{
	; Start from bottom red
	BuyNMove("Up")
	BuyNMove("Up")
	BuyNMove("Up")
	BuyNMove("Up")
	BuyNMove("Up")
	BuyNMove("Left")
	; Red left side
	BuyNMove("Down")
	BuyNMove("Down")
	BuyNMove("Down")
	BuyNMove("Right")
	Move("Right")
	; Red right side
	BuyNMove("Up")
	BuyNMove("Up")
	BuyNMove("Up")
	BuyNMove("Right")
	; Blue outside 
	BuyNMove("Right")
	BuyNMove("Right")
	BuyNMove("Down")
	; Move to yellow center
	Move("Down")
	Move("Up")
	Move("Up")
	Move("Up")
	Move("Up")
	Move("Up")
	; Yellow Tree middle from center
	BuyNMove("Down")
	BuyNMove("Down")
	BuyNMove("Down")
	BuyNMove("Down")
	BuyNMove("Down")
	; Move to Right yellow
	BuyNMove("Right")
	BuyNMove("Right")
	; Move to blue and back to yellow
	Move("Left")
	BuyNMove("Right")
	BuyNMove("Right")
	BuyNMove("Right")
	; Move to left yellow side
	Move("Down")
	Move("Left")
	BuyNMove("Up")
	BuyNMove("Up")
	BuyNMove("Up")
	BuyNMove("Left")
	; Get center bottom  blue orbs
	BuyNMove("Down")
	BuyNMove("Left")
	; Get in position for blue
	Move("Left")
	Move("Up")
	Move("Up")
	Move("Up")
	Move("Up")
	Move("Up")
	; Blue center lines
	BuyNMove("Down")
	BuyNMove("Down")
	BuyNMove("Down")
	BuyNMove("Down")
	BuyNMove("Down")
	; Blue right lines
	BuyNMove("Down")
	BuyNMove("Up")
	BuyNMove("Up")
	BuyNMove("Up")
	BuyNMove("Left")
	; Blue left lines
	Move("Left")
	BuyNMove("Left")
	BuyNMove("Left")
	BuyNMove("Left")
	BuyNMove("Up")
	; Blue outside
	BuyNMove("Up")
	BuyNMove("Up")
	BuyNMove("Right")

	;
	; Should be finished now
	; Reset cursor to start again
	Move("Right")
	Move("Down")
	Move("Down")
	Move("Down")
	Move("Down")
}

F2::
Loop, 250 {
BecomeLegend()
}
return