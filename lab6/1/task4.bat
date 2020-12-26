for /F "skip=1" %%i in ('dir Test /B /O -D /T:C') do (
del Test\%%i 
)
