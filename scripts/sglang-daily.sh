#!/bin/bash
# SGLang Daily Report Generator
# Schedule: 07:30 AM Daily

cd /Users/xuchong/.openclaw/workspace

# 触发 SGLang 日报生成
echo "heartbeat:sglang" > /tmp/sglang-daily-trigger.flag

echo "SGLang daily report triggered at $(date '+%H:%M')"
