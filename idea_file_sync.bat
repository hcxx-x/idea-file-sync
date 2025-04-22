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
set current_time=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
echo '开始提交'
git commit -m idea-file-sync%current_time%
echo "commit finished"
git push
%结束%
echo "execute end..."