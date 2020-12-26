SCHTASKS /Delete /TN this
copy /y /B C:\test\* NEW
copy /y /B C:\temp\* NEW2
FC NEW NEW2 > nul
IF ERRORLEVEL 1 goto start task2.bat
