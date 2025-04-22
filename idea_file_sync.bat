@echo off

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

rem 获取当前时间
for /f "delims=" %%a in ('powershell -Command "Get-Date -Format 'yyyyMMddHHmmss'"') do (
    set "formatted_time=%%a"
)
echo 当前时间：%formatted_time%

git commit -m idea_file_sync%formatted_time%
echo "commit finished"
git push
%结束%
echo "execute end..."