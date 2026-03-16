#!/bin/bash
# Health Check Script - 系统状态确认
# Schedule: 06:30 AM Daily

cd /Users/xuchong/.openclaw/workspace

# 获取天气信息（带重试）
WEATHER=""
for i in 1 2 3; do
    WEATHER=$(curl -s "http://wttr.in/Shanghai?format=%C+|+%t+|+%w+|+%h" 2>/dev/null)
    if [ -n "$WEATHER" ] && [ "$WEATHER" != "Unknown location; please try" ]; then
        break
    fi
    sleep 2
done

if [ -z "$WEATHER" ]; then
    WEATHER="天气服务暂时不可用"
fi

# 获取当前时间
CURRENT_TIME=$(date '+%H:%M')

# 发送消息到主会话 (通过 openclaw 事件系统)
echo "heartbeat:health-check" > /tmp/health-check-trigger.flag

echo "Health check triggered at $CURRENT_TIME"
echo "Weather: $WEATHER"
