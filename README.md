# Some audio utilities wrappers using ffmpeg

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

Run:
```FromStereoToMono.bat [audio file paths]```
After running this script with the files that need you want to change to mono, it is going to ask you which method to use and depending on the method it will give you more options.
