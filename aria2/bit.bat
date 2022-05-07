@echo off

:: aria2.conf位置、要下载的trackers文件，在这里修改
set CONF_FILE=%USERPROFILE%\.aria2\aria2.conf
set TRACKER_FILE=trackers_best.txt
set DOWNLOAD_LINK=https://raw.githubusercontent.com/ngosang/trackerslist/master/%TRACKER_FILE%

aria2c --dir=%TEMP% --allow-overwrite=true "%DOWNLOAD_LINK%"

sed.exe -i ":a;N;s/\n/ /; ta;" %TEMP%\%TRACKER_FILE%
sed.exe -i "1s/^/bt-tracker=/g; s/  /,/g; s/ $//;" %TEMP%\%TRACKER_FILE%
sed.exe -i "/^bt-tracker=/d" %CONF_FILE%

type %TEMP%\%TRACKER_FILE% >> %CONF_FILE%

del .\sed*
del %TEMP%\trackers*