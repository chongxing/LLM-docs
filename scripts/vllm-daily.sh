#!/bin/bash
# vLLM Daily Report Generator
# Schedule: 07:35 AM Daily

cd /Users/xuchong/.openclaw/workspace

# 触发 vLLM 日报生成
echo "heartbeat:vllm" > /tmp/vllm-daily-trigger.flag

echo "vLLM daily report triggered at $(date '+%H:%M')"
