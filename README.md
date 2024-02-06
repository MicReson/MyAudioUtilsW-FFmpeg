# Some audio utilities wrappers using ffmpeg

## IMPORTANT AND WIP :warning:
- Any bash script presented here is not ready yet and/or not working.

## Audio Utilities :headphones:

Here are some audio utilities that I could be using.

- One is used for converting a WAV file to an MP3 with different levels of quality.
- Use for making stereo files into mono fiels.

## :bangbang: Prior Setup :desktop_computer:

- Download and install ffmpeg.
  - Using winget `winget install --name ffmpeg` or `winget install --id Gyan.FFmpeg`.
- Clone or download the repo and use the batch scripts.
- Be sure you have ffmpeg on your PATH variable in the enviroment variables.
  - To test if it is on your variables run: ```ffmpeg -version``` that should return the ffmpeg version on your system.

## How to use the scripts :keyboard:

- Run: ```FromStereoToMono.bat [audio file paths]```
- After running this script with the files that you intent to change to mono, it is going to ask you which method to use.
  - First method one it will add both channels together.
  - Second method it will ask you to choose one side of the stereo channel to keep and it will discard the other channel. 
