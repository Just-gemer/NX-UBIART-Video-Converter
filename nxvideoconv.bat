@echo off
title NX Webm Tool By Just gemer
echo PLEASE DONT CLOSE WINDOW WHILE CONVERTING
set /P mapname=Enter mapname: 
ffmpeg.exe -i input.webm -threads:v 1 -metadata title='1216x720' -sws_flags bicubic -codec:v libvpx -r:v 25  -b:v 9900k -bufsize 9900k -g 120 -rc_lookahead 16 -profile:v 1 -qmax 51 -qmin 11 -slices 4 -quality realtime -an -vol 0 -b:v 9900k  -aspect 16:9 -b:v 9900k -filter:v scale=1980:1080 %mapname%.vp9.720.webm
mkclean.exe %mapname%.vp9.720.webm
del %mapname%.vp9.720.webm
ren clean.%mapname%.vp9.720.webm %mapname%.vp9.720.webm
echo Converting finished!
pause
