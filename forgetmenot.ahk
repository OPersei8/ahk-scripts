#MaxHotkeysPerInterval 200
f9::Suspend
a::
SetMouseDelay 33
While, GetKeyState("a","P")
{
	Click
}
Return

f::
CoordMode, Mouse, Client
Click, 1265, 695
return

e::
CoordMode, Mouse, Client
While, GetKeyState("e","P")
{
Click, 1088, 588
}
return
w::
CoordMode, Mouse, Client
While, GetKeyState("w","P")
{
Click, 970, 588
}

return
q::
CoordMode, Mouse, Client
While, GetKeyState("q","P")
{
Click, 428, 588
}

return