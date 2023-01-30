@echo off
setlocal EnableDelayedExpansion
:start

set /A Counter=0
cls
for %%a in (*.jar) do (
	set /A Counter+=1
	echo [!Counter!] %%~a
)
set /p input=Task:
cls
set /A Counter=0
for %%a in (*.jar) do (
	set/A Counter+=1
	if !Counter! == !input! (
		java -jar %%a
	)
)
pause
goto start
