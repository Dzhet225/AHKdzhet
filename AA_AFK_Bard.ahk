F12::Pause

F11:: 
{ 
global AAClient
WinGet, active_id, ID, A
AAClient = %active_id%
Start()
Return 
}

TargetPuler()
{
	ControlSend,, {Numpad3}, ahk_id %AAClient% 
	return
}

TargetMob()
{
	ControlSend,, {Numpad5}, ahk_id %AAClient% 
	return
}

PlaySongFirst() 
{
    ControlSend,, 1, ahk_id %AAClient% 
	Sleep, 2100
	ControlSend,, 2, ahk_id %AAClient% 
	Sleep, 2100
	ControlSend,, 3, ahk_id %AAClient% 
	Sleep, 2100
	ControlSend,, 4, ahk_id %AAClient% 
	Sleep, 2100
	SetTimer, SongTimer, 21000
    return 
}

PlaySong() 
{
    ControlSend,, 1, ahk_id %AAClient% 
	Sleep, 950
	ControlSend,, 2, ahk_id %AAClient% 
	Sleep, 950
	ControlSend,, 3, ahk_id %AAClient% 
	Sleep, 950
	ControlSend,, 4, ahk_id %AAClient% 
	Sleep, 950
	SetTimer, SongTimer, 27000
    return 
}

Debuf()
{
	TargetMob()
	Sleep, 1000
	ControlSend,, q, ahk_id %AAClient% 
	Sleep, 1000
	ControlSend,, {F5}, ahk_id %AAClient% 
	Sleep, 200
	ControlSend,, {NumpadAdd}, ahk_id %AAClient% 
	SetTimer, DebufTimer, 29000
	return
}

Buf()
{	
	TargetPuler()
	Sleep, 1000
	ControlSend,, e, ahk_id %AAClient% 
	SetTimer, BufTimer, 28000
	return
}

Food()
{	
	Sleep, 1000
	SetTimer, SongTimer, Off
	ControlSend,, {F4}, ahk_id %AAClient% 
	PlaySongFirst()
	SetTimer, FoodTimer, 600000
	return
}

SongTimer:
{
	PlaySong() 
	return
}

DebufTimer:
{
	Debuf()
	return
}

BufTimer:
{
	Buf()
	return
}

FoodTimer:
{
	Food()
	return
}

Start()
{ 
	PlaySongFirst()
	SetTimer, BufTimer, 2000
	SetTimer, DebufTimer, 5000
	SetTimer, FoodTimer, 150000
	return
}
