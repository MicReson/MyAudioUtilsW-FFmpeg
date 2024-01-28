@echo off

:Loop
SET output=%~dpn1-Mono.wav

if "%~1"=="" (
    echo Usage: .\FromStereoToMono.bat [Channel_Number] [input_file.wav]
    goto continue
)

ffmpeg -i %1 -ac 1 "%output%"

echo Conversion complete: %output%

shift

goto Loop

:continue
exit /b
