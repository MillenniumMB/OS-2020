echo %computername%
mkdir C:\temp
net SHARE T = C:\temp
net USE * \\%computername%\T
