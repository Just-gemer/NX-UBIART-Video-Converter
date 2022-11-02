@echo off
title NX Webm Tool By Just gemer
echo PLEASE DONT CLOSE WINDOW WHILE CONVERTING
set /P mapname=Enter mapname: 
ffmpeg.exe -i input.webm -threads:v 4 -sws_flags bicubic -codec:v libvpx-vp9  -r:v 25  -b:v 3800k -bufsize 6000k -g 120 -rc_lookahead 16 -profile:v 0 -qmax 51 -qmin 11 -slices 4 -quality realtime -an -vol 0 -b:v 3800k  -aspect 16:9 -b:v 5000k -filter:v scale=1280x720 %mapname%.vp9.720.webm
mkclean.exe %mapname%.vp9.720.webm
del %mapname%.vp9.720.webm
ren clean.%mapname%.vp9.720.webm %mapname%.vp9.720webm
echo Converting finished!
pause