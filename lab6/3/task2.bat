net stop Dnscache
TIMEOUT /T 60 /NOBREAK
sc queryex type=service state=all > servak2.txt
FC servak.txt servak2.txt > delta.txt
net start Dnscache
