#!/bin/bash
# IREE Daily Report Generator
# Schedule: 07:55 AM Daily

cd /Users/xuchong/.openclaw/workspace

# 触发 IREE 日报生成
echo "heartbeat:iree" > /tmp/iree-daily-trigger.flag

echo "IREE daily report triggered at $(date '+%H:%M')"
