Dim WshShell, btn, FSO, ScriptPath, FolderPath
Set WshShell = WScript.CreateObject("WScript.Shell")
Set FSO = CreateObject("Scripting.FileSystemObject")

ScriptPath = WScript.ScriptFullName
FolderPath = FSO.GetParentFolderName(ScriptPath)

btn = WshShell.Popup("This tool is designed to be safe and efficient. " & vbCrLf & _
      "I have tested it and it works fine, but still, I am not responsible for any system changes." & vbCrLf & vbCrLf & _
      "Do you want to launch the optimizer?", 0, "Velocity System Optimizer", 4 + 64)

If btn = 6 Then
    WshShell.Run "cmd /k """ & FolderPath & "\MainProcess.bat"" confirmed", 1, True
Else
    WScript.Quit
End If