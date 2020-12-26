SCHTASKS /Delete /TN this
FC C:\test\1.txt C:\temp\1.txt > nul
IF ERRORLEVEL 1 goto start task2.bat
