chcp 1251
sc queryex type=service state=all | find "SERVICE_NAME" > service.txt
net start > C:\lab6\third\service.txt
net stop dnscache
TIMEOUT /t 5
sc queryex type=service state=all | find "SERVICE_NAME" > serviceNew.txt
net start > C:\lab6\third\serviceNew.txt
fc /c C:\lab6\third\service.txt C:\lab6\third\serviceNew.txt > check.txt