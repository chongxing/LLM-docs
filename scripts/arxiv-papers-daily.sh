#!/bin/bash
# ArXiv Papers Daily Report Generator
# Schedule: 09:00 AM Daily

cd /Users/xuchong/.openclaw/workspace

# 获取当前日期
TODAY=$(date '+%Y-%m-%d')
CHAT_ID="oc_386315a3bceb7efc451dd781551578a8"

# 触发 ArXiv 论文监控任务（通过主会话执行）
echo "heartbeat:arxiv-papers" > /tmp/arxiv-papers-trigger.flag

echo "ArXiv papers daily report triggered at $(date '+%H:%M') for $TODAY"
