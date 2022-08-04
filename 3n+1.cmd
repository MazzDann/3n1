@echo off
	set /a enableEcho =1
:strt
cls 
	echo (write off/on to disable/enable iterations output)
	set /p num="Number?"
	if "%num%"=="off" (set /a enableEcho =0) else (
		if "%num%"=="on" (set /a enableEcho =1))
	set /a number_of_num =0+%num%
	if %number_of_num% neq %num% (
		echo TYPE THE NUMBERS
		goto :strt)
	set itt=0
	set Max=%num%
:start
		if %num%==1 (goto :end)
		if %enableEcho%==1 (echo Iteration:%itt% _ %num%)

	set /a hlf=%num%/2
	set /a hlf=%hlf%*2
	if %hlf%==%num% (set /a num=%num%/2
	)else (set /a num=%num%+%num%+%num%+1)
	if %num% gtr %Max% ( set Max=%num% )
	set /a itt=%itt%+1
goto :start
:end
	echo ---------------------------------
		echo Number   is   %number_of_num%
		echo Calculations = %itt%
		echo Max number= %Max%
	echo ---------------------------------
	pause
goto :strt