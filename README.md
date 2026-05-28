# 签到仓库

每天通过 Git 提交记录签到。

## 使用方式

### Windows (Git Bash / WSL)
```bash
./checkin.sh "今天完成了XXX"
```

### 手动签到
```bash
echo "$(date '+%Y-%m-%d %H:%M:%S') - 签到" >> data/checkin.log
git add data/checkin.log
git commit -m "签到: $(date '+%Y-%m-%d')"
```

## 查看签到记录
```bash
git log --oneline --since="2026-01-01"
```
