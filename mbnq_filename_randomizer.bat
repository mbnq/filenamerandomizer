:: mass rename script by mbnq00@gmail.com | mbnq.pl
::
:: Place me in directory with files to rename


title mbnq file name randomizer
@echo off
color 17

setlocal enabledelayedexpansion

set _extension=jpg
set _logfile=mbnq_namechanger.log
set _oldname=dummy
set _newname=dummy
set _opcja=nul

cls
call :intro
echo:[1] - Rename all files in current directory
echo:
set /p _opcja=

if NOT %_opcja% EQU 1 goto end
if NOT exist %_logfile% echo:>%_logfile%
cls & call :intro

for %%x in (*.%_extension%) do (set _oldname="%%x" & call :changename)
echo:
echo:any key to exit...
pause > nul
goto end

:changename
set _newname=%random%%random%.%_extension%
echo:File %_oldname% name changed to %_newname%
echo:File %_oldname% name changed to %_newname% >> %_logfile%
REN %_oldname% %_newname%
goto end

:intro
   echo:лллллллллллллллллллллллллллллллллллллллллллллллллллллл
   echo:л                                                    л
   echo:л                       mbnq.pl                      л
   echo:л                               rfn    .1            л
   echo:лллллллллллллллллллллллллллллллллллллллллллллллллллллл
   echo:
goto end

:end