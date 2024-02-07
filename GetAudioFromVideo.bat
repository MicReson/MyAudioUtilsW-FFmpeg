@echo off

SET /P CodecType= "Which codec? 1 for MP3, 2 for WAV and 3 for AAC: "

if %CodecType% NEQ 1 if %CodecType% NEQ 2 if %CodecType% NEQ 3 (
    echo Please provide a codec option
    exit /b
)

if %CodecType%==1 (
    goto Mp3Codec
)

if %CodecType%==2 (
    goto WavCodec
)

if %CodecType%==3 (
    goto AAC_Codec
)

:Mp3Codec
:Loop
SET output=%~dpn1-AUDIO.mp3

if "%~1"=="" (
    echo Usage: .\GetAudioFromVideo.bat [input_file.wav]
    goto continue
)

ffmpeg -i %1 -vn -acodec libmp3lame "%output%"

echo Conversion complete: %output%

shift

goto Loop

:continue
exit /b

:WavCodec
:LoopWav
SET output=%~dpn1-AUDIO.wav

if "%~1"=="" (
    echo Usage: .\GetAudioFromVideo.bat [input_file.wav]
    goto continueWav
)

ffmpeg -i %1 -vn -acodec pcm_s16le "%output%"

echo Conversion complete: %output%

shift

goto LoopWav

:continueWav
exit /b

:AAC_Codec
:LoopAAC
SET output=%~dpn1-AUDIO.m4a

if "%~1"=="" (
    echo Usage: .\GetAudioFromVideo.bat [input_file.wav]
    goto continueAAC
)

ffmpeg -i %1 -vn -c:a aac -b:a 192k "%output%"

echo Conversion complete: %output%

shift

goto LoopAAC 

:continueAAC
exit /b

