rem ワークディレクトリのドライブを指定しておくこと
D:

rem ワークディレクトリ指定
set LOGGETWORKDIR=D:\work\

set YYYYMMDD=%DATE:/=%
mkdir %LOGGETWORKDIR%\%YYYYMMDD%\evt

cd %LOGGETWORKDIR%\%YYYYMMDD%\evt

wevtutil export-log security Sec.evtx
wevtutil export-log application App.evtx
wevtutil export-log system System.evtx

pause

