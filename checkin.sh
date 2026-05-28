#!/bin/bash
# 签到脚本 - 通过 Git 提交记录每日签到
# 用法: ./checkin.sh "可选的备注信息"

MSG="${1:-签到}"
DATE=$(date '+%Y-%m-%d %H:%M:%S')
LOG_FILE="$(dirname "$0")/data/checkin.log"

echo "${DATE} - ${MSG}" >> "${LOG_FILE}"

cd "$(dirname "$0")"
git add data/checkin.log
git commit -m "签到: $(date '+%Y-%m-%d') - ${MSG}" --allow-empty

echo "✅ 签到成功: ${DATE}"
