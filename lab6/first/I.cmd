rem to ensure right encoding:
chcp 1251
systeminfo > systeminfo.txt
driverquery > driverquery.txt
md test
xcopy C:\lab6\first C:\lab6\first\test
cd test
dir /b > testdir.txt
for %%F in (*) do if /I not "%%F"=="testdir.txt" del "%%~F"