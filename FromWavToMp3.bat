@echo off
SETLOCAL EnableDelayedExpansion

SET input=%~1
SET output=%~dpn1.mp3
SET quality=%~2

if "%~1"=="" (
    echo Usage: FromWavToMp3.bat [input_file.wav] [quality]
    pause
    exit /b
)

if "%~2"=="" (
    SET quality=2
)

SET /A test_num=%quality% 2>nul
if "!errorlevel!" NEQ "0" (
    echo The quality argument must be a number.
    exit /b
)

SET valid_qualities=0123456789

if NOT "%valid_qualities:"%quality%"=%"=="%valid_qualities%" (
    echo The quality of conversion should be a single digit between 0 and 9.
    pause
    exit /b
)

ffmpeg -i "%input%" -codec:a libmp3lame -qscale:a %quality% "%output%"

echo Conversion complete: %output%

ENDLOCAL
