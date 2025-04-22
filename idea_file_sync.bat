@echo off
setlocal enabledelayedexpansion

echo "开始执行..."

set "script_dir=%~dp0"
echo 脚本所在目录是：%script_dir%

%进入脚本所在目录%
cd /d "%~dp0"

%推送之前先拉取最新的会话%
git pull
echo "pull finished"
%将文件添加到git管理，提交并推送到远程，提交消息为固定内容加当前时间%
git add .



rem 使用WMIC命令获取标准化的日期时间
for /f "skip=1 delims=" %%a in ('wmic os get localdatetime ^| findstr /r [0-9]') do (
    set "datetime=%%a"
)

rem 提取日期时间各部分
set "year=%datetime:~0,4%"
set "month=%datetime:~4,2%"
set "day=%datetime:~6,2%"
set "hour=%datetime:~8,2%"
set "minute=%datetime:~10,2%"
set "second=%datetime:~12,2%"

rem 组合成指定格式
set "formatted_time=%year%-%month%-%day% %hour%:%minute%:%second%"




echo '%formatted_time%'
git commit -m "%formatted_time%"
echo "commit finished"
git push
%结束%
echo "execute end..."