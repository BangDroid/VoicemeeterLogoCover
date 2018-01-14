;Wait for the VoiceMeeter window to appear before anything
WinWait, ahk_exe voicemeeterpro.exe
{
; some variables
path = C:\Program Files (x86)\VB\Voicemeeter\ ; path to VoiceMeeter install folder
img = vmLogo.png
	

;new gui - this is a hack
Gui, 1: Color, white, Default 
Gui, 1: +LastFound +AlwaysOnTop 
WinSet, TransColor, white 255 
Gui 1: -Caption +ToolWindow ;removes the title and border from the gui
gui, 1: add, Picture, gfutureEasterEgg, %path%%img%
Set_Parent_by_title("VoiceMeeter", 1) ; makes the gui button a child of VoiceMeeter
Gui, 1: Show, x485 y-5 ;positions the button releative to the Voicemeeter window
Return

;parent/child function from https://goo.gl/6hfhtV
Set_Parent_by_title(Window_Title_Text, Gui_Number)
{ 
  WinGetTitle, Window_Title_Text_Complete, %Window_Title_Text% 
  Parent_Handle := DllCall( "FindWindowEx", "uint",0, "uint",0, "uint",0, "str", Window_Title_Text_Complete) 
  Gui, %Gui_Number%: +LastFound 
  Return DllCall( "SetParent", "uint", WinExist(), "uint", Parent_Handle ) ; success = handle to previous parent, failure =null
}

;Some silly eater egg maybe
futureEasterEgg:  
Return
}
 