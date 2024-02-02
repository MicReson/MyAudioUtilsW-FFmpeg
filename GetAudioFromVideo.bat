@echo off

:Loop

SET output=%~dpn1-AUDIO.mp3

if "%~1"=="" (
    echo Usage: .\FromStereoToMono.bat [input_file.wav]
    goto continue
)

ffmpeg -i %1 -map 0:a "%output%"

echo Conversion complete: %output%

shift

goto Loop

:continue
exit /b
