#!/bin/bash
# Todo Reminder Script - 待办任务提醒检查
# Schedule: 每小时

cd /Users/xuchong/.openclaw/workspace

# 发送待办检查事件到主会话
echo "heartbeat:todo-check" > /tmp/todo-check-trigger.flag

echo "Todo check triggered at $(date '+%H:%M')"
