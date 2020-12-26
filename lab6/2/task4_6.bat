SCHTASKS /Delete /TN this
FC C:\test C:\temp > nul
IF ERRORLEVEL 1 goto start task2.bat
