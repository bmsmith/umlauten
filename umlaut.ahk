# 
# key combination to activate: alt+shift+semicolon
# type a vowel in either lowercase or capital to input its corresponding umlaut vowel
# type an "s" to get an eszett and a double quote to get the upside down double quote.
# only works one letter at a time. To cancel, press any other key.
#
# requires https://www.autohotkey.com/


SendMode Input  ; 
SetWorkingDir %A_ScriptDir%  ; 
!+;::
	Input, SingleKey, CL1
	if (RegExMatch(SingleKey, "a")) {
		Send, ä
	} else If (RegExMatch(SingleKey, "A")) {
		Send, Ä
	} else If (RegExMatch(SingleKey, "o")) {
		Send, ö
	} else If (RegExMatch(SingleKey, "O")) {
		Send, Ö
	} else If (RegExMatch(SingleKey, "u")) {
		Send, ü
	} else If (RegExMatch(SingleKey, "U")) {
		Send, Ü
	} else If (RegExMatch(SingleKey, "s")) {
		Send, ß
	} else If (RegExMatch(SingleKey, """")) {
		Send, „
	}
return
