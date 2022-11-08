@echo off
title NX Webm Tool By Just gemer
echo PLEASE DONT CLOSE WINDOW WHILE CONVERTING
set /P mapname=Enter mapname:
set /P videotitle=Enter video title:
set /P videoex=Enter video extension type:
ffmpeg.exe -i %videotitle%.%videoex% -threads:v 3 -sws_flags bicubic -c:v libvpx -r:v 25 -b:v 8000k -bufsize 8000k -g 120 -rc_lookahead 16 -profile:v 0 -qmax 51 -qmin 11 -slices 4 -quality realtime -an -aspect 16:9 -filter:v scale=1216:720 %mapname%.vp9.720.webm
mkclean.exe %mapname%.vp9.720.webm
del %mapname%.vp9.720.webm
ren clean.%mapname%.vp9.720.webm %mapname%.vp9.720.webm
echo Converting finished!
pause
