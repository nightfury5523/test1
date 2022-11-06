@echo off 
set src_folder=.\
set dst_folder=.\copied
set file_list=.\file-list.txt  
if not exist "%dst_folder%" mkdir "%dst_folder%"
for /f "tokens=*" %%i in (%file_list%) DO (
   echo f | xcopy /E /C /R /Y "%src_folder%\%%i" "%dst_folder%\%%i"
)