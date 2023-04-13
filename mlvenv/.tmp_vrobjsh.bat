@ECHO OFF
@SET PYTHONIOENCODING=utf-8
@SET PYTHONUTF8=1
@FOR /F "tokens=2 delims=:." %%A in ('chcp') do for %%B in (%%A) do set "_CONDA_OLD_CHCP=%%B"
@chcp 65001 > NUL
@CALL "c:\Users\ACER\anaconda3\condabin\conda.bat" activate "d:\ml_project\mlvenv"
@IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
@d:\ml_project\mlvenv\python.exe -Wi -m compileall -q -l -i C:\Users\ACER\AppData\Local\Temp\tmpks7mdnbn -j 0
@IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
@chcp %_CONDA_OLD_CHCP%>NUL
