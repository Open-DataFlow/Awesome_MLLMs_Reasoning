#!/bin/bash

# 检查是否提供了commit信息作为参数
if [ $# -eq 0 ]; then
    echo "请提供commit信息"
    echo "使用方法: ./auto_git.sh \"your commit message\""
    exit 1
fi

# 获取命令行参数作为commit信息
commit_message="$1"

# 执行git命令
git add .
git commit -m "$commit_message"
git push

# 如果上述命令成功执行，显示成功信息
if [ $? -eq 0 ]; then
    echo "Git操作成功完成!"
else
    echo "Git操作过程中发生错误"
fi