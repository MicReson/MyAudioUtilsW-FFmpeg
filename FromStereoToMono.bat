@echo off
SET input=%~1
SET output=%~dpn1-Mono.wav

if "%~1"=="" (
    echo Usage: .\FromStereoToMono.bat [input_file.wav]
    exit /b
)

ffmpeg -i "%input%" -ac 1 "%output%"
echo Conversion complete: %output%

