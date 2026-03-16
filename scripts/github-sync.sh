#!/bin/bash
# GitHub Sync Script for LLM-docs
# Schedule: 08:45 AM Daily

cd /Users/xuchong/.openclaw/workspace/LLM-docs

# 配置 git
export GIT_COMMITTER_NAME="OpenClaw Bot"
export GIT_COMMITTER_EMAIL="bot@openclaw.local"
export GIT_AUTHOR_NAME="OpenClaw Bot"
export GIT_AUTHOR_EMAIL="bot@openclaw.local"

DATE=$(date +%Y-%m-%d)
RETRY_COUNT=0
MAX_RETRIES=5

while [ $RETRY_COUNT -lt $MAX_RETRIES ]; do
    # 拉取最新更改
    git pull origin main --rebase 2>/dev/null || true
    
    # 添加所有日报文件
    git add sglang/ vllm/ tensorrt-llm/ pytorch/ iree/ 2>/dev/null
    
    # 检查是否有更改要提交
    if git diff --cached --quiet; then
        echo "No changes to commit"
        exit 0
    fi
    
    # 提交更改
    git commit -m "daily: 5-project LLM reports $DATE" || true
    
    # 推送到 GitHub
    if git push origin main; then
        echo "✅ GitHub sync successful at $(date '+%H:%M')"
        exit 0
    fi
    
    RETRY_COUNT=$((RETRY_COUNT + 1))
    echo "⚠️ Push failed, retry $RETRY_COUNT/$MAX_RETRIES..."
    sleep $((2 + RANDOM % 4))
done

echo "❌ GitHub sync failed after $MAX_RETRIES retries"
exit 1
