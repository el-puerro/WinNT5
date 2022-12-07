@echo off
if NOT defined SDXROOT echo Run from a razzle prompt.&goto :eof

cd /d %SDXROOT%

set _NTVARIANT=%1

if NOT defined _NTVARIANT echo Usage: oscdimg.cmd <variant>.&goto :eof

%SDXROOT%\base\ntsetup\opktools\wpebins\x86\oscdimg.exe -n -b"%SDXROOT%\base\ntsetup\opktools\wpebins\x86\etfsboot.com" %_NTPOSTBLD%\%_NTVARIANT% %_NTDRIVE%\%_NTVARIANT%.iso