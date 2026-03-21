#!/bin/bash
# XLA Daily Report Generator
# Schedule: 08:00 AM Daily

cd /Users/xuchong/.openclaw/workspace

# 触发 XLA 日报生成
echo "heartbeat:xla" > /tmp/xla-daily-trigger.flag

echo "XLA daily report triggered at $(date '+%H:%M')"
