@echo off
SET /P CodecType= "Which codec? 1 for MP3 and 2 for WAV: "

if %CodecType% NEQ 1 if %CodecType% NEQ 2 (
    echo Please provide a codec option
    exit /b
)

if %CodecType%==1 (
    goto Mp3Codec
)

if %CodecType%==2 (
    goto WavCodec
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

