Func opsiwinwait($title, $text, $maxseconds, $logname)
	Local $handle = 0
	Local $exists = 0
	Local $seconds = 0
	Local $mylog
	$mylog = FileOpen($logname, 1)
	While ($seconds <= $maxseconds) and ($exists = 0)
		$exists = WinExists($title , $text)
		if $exists = 0 then
			$seconds = $seconds + 1
			sleep(1000)
		else
			$handle = WinGetHandle($title , $text)
			FileWriteLine($mylog,"win: "  & $title & " ; " & $text & " exists result (1=exists): " & $exists )
		EndIf
	WEnd
	if $exists = 0 then
		FileWriteLine($mylog,round(TimerDiff($hTimer)/1000,2) & " win: "  & $title & " ; " & $text & " not found -giving up ")
		FileClose($mylog)
		exit 0
	else
		FileClose($mylog)
		Return $handle
	EndIf
EndFunc

Func opsiwinactivate($title, $text, $maxseconds, $logname)
	Local $handle = 0
	Local $seconds = 0
	Local $mylog
	$mylog = FileOpen($logname, 1)
	While ($seconds <= $maxseconds) and ($handle = 0)
		$handle = WinActivate ($title , $text)
		FileWriteLine($mylog,round(TimerDiff($hTimer)/1000,2) & " win: "  & $title & " ; " & $text & " ativate result (0=failed): " & $handle )
		$seconds = $seconds + 1
		sleep(1000)
	WEnd
	FileClose($mylog)
	Return $handle
EndFunc


Func opsiControlClick($title, $text, $id, $maxseconds, $logname)
	Local $result = 0
	Local $seconds = 0
	Local $mylog
	$mylog = FileOpen($logname, 1)
	While ($seconds <= $maxseconds) and ($result = 0)
		$result = ControlClick($title , $text,$id)
		FileWriteLine($mylog,"answer for " & $title & " ; " & $text & " id: " & $id & " sended: result (1=success) : " & $result)
		$seconds = $seconds + 1
		sleep(500)
	WEnd
	FileClose($mylog)
EndFunc

Func opsiControlSetText($title, $text, $id,$sendtext, $maxseconds, $logname)
	Local $result = 0
	Local $seconds = 0
	Local $mylog
	$mylog = FileOpen($logname, 1)
	While ($seconds <= $maxseconds) and ($result = 0)
		$result = ControlSetText ($title , $text,$id, $sendtext)
		FileWriteLine($mylog,"answer for " & $title & " ; " & $text & " id: " & $id & " set: " & $sendtext & " sended: result (1=success) : " & $result)
		$seconds = $seconds + 1
		sleep(500)
	WEnd
	FileClose($mylog)
EndFunc

Func opsisend($text, $handle, $logname)
	Local $mylog
	$mylog = FileOpen($logname, 1)
	WinActivate($handle)
	send($text)
	FileWriteLine($mylog, round(TimerDiff($hTimer)/1000,2) & " sended: <" & $text & ">")
	FileClose($mylog)
	;MsgBox ( 0, "opsi-autoit-send", $text , 3)
	sleep(500)
EndFunc


Func opsiLogWinList($logname)
    Local $mylog
	$mylog = FileOpen($logname, 1)
    Local $aList = WinList()

    ; Loop through the array displaying only visable windows with a title.
    For $i = 1 To $aList[0][0]
        If $aList[$i][0] <> "" And BitAND(WinGetState($aList[$i][1]), 2) Then
            FileWriteLine($mylog, "Title: " & $aList[$i][0] & " Handle: " & $aList[$i][1])
        EndIf
    Next
    FileClose($mylog)
EndFunc 

Func opsiLogIF($exp1,$exp2,$logname)
    Local $mylog
	$mylog = FileOpen($logname, 1)
    If $exp1 = $exp2 Then
       FileWriteLine($mylog, "exp1: " & $exp1 & " exp2: " & $exp2 & " are equal")
    else       
       FileWriteLine($mylog, "exp1: " & $exp1 & " exp2: " & $exp2 & " are not equal")
    EndIf
    FileClose($mylog)
EndFunc 

Func opsiLog($message,$logname)
	Local $mylog
	$mylog = FileOpen($logname, 1)
	FileWriteLine($mylog, $message)
	FileClose($mylog)
EndFunc 

