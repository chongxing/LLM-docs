#!/bin/bash
# Dynamo Daily Report Generator
# Schedule: 08:05 AM Daily

cd /Users/xuchong/.openclaw/workspace

# 触发 Dynamo 日报生成
echo "heartbeat:dynamo" > /tmp/dynamo-daily-trigger.flag

echo "Dynamo daily report triggered at $(date '+%H:%M')"
