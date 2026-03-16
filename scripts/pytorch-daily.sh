#!/bin/bash
# PyTorch Daily Report Generator
# Schedule: 07:50 AM Daily

cd /Users/xuchong/.openclaw/workspace

# 触发 PyTorch 日报生成
echo "heartbeat:pytorch" > /tmp/pytorch-daily-trigger.flag

echo "PyTorch daily report triggered at $(date '+%H:%M')"
