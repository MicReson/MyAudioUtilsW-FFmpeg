@echo off

SET /P ChooseOption= "Choose 1 if want to add channels and 2 if you want to choose the channels= "

if %ChooseOption%==1 (
    goto ChannelConvertion
)

if %ChooseOption%==2 (
    goto ChannelChoose
)

if %ChooseOption% NEQ 1 if %ChooseOption% NEQ 2 (
    echo Not a valid option
    exit /b
)

:ChannelConvertion
:Loop

SET output=%~dpn1-Mono.wav

if "%~1"=="" (
    echo Usage: .\FromStereoToMono.bat [input_file.wav]
    goto continue
)

ffmpeg -i %1 -ac 1 "%output%"

echo Conversion complete: %output%

shift

goto Loop

:ChannelChoose

SET /P ChooseChannel= "0 is the left channel and 1 is the right channel= "
if %ChooseChannel% NEQ 0 if %ChooseChannel% NEQ 1 (
    echo Please choose the correct channel
    exit /b
)

:LoopSecondOption

SET UserChannel=%ChooseChannel%
SET output=%~dpn1-Mono.wav

if "%~1"=="" (
    echo Usage: .\FromStereoToMono.bat [input_file.wav]
    goto continue
)

ffmpeg -i %1 -map_channel 0.0.%UserChannel% "%output%"

echo Conversion complete: %output%

shift

goto LoopSecondOption

:continue
exit /b
