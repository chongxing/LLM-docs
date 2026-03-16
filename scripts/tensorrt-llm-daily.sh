#!/bin/bash
# TensorRT-LLM Daily Report Generator
# Schedule: 07:40 AM Daily

cd /Users/xuchong/.openclaw/workspace

# 触发 TensorRT-LLM 日报生成
echo "heartbeat:tensorrt-llm" > /tmp/tensorrt-llm-daily-trigger.flag

echo "TensorRT-LLM daily report triggered at $(date '+%H:%M')"
