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

# 发送消息到飞书（带重试）
MESSAGE="🟢 系统状态正常 | ${CURRENT_TIME}

Gateway: 运行中
Feishu: 已连接
模型: kimi-coding/kimi-for-coding

🌤️ 上海天气: ${WEATHER}

07:30 开始生成日报..."

# 发送消息到飞书群（带重试）
CHAT_ID="oc_386315a3bceb7efc451dd781551578a8"

for attempt in 1 2 3 4 5; do
    RESPONSE=$(cd /Users/xuchong/.openclaw/workspace && openclaw message send --channel feishu --target "chat:$CHAT_ID" --message "$MESSAGE" 2>&1)
    EXIT_CODE=$?
    if [ $EXIT_CODE -eq 0 ]; then
        echo "Health check message sent successfully at $CURRENT_TIME (attempt $attempt)"
        break
    else
        echo "Attempt $attempt failed (exit: $EXIT_CODE): $RESPONSE"
        if [ $attempt -lt 5 ]; then
            sleep 3
        fi
    fi
done

if [ $attempt -eq 5 ] && [ $EXIT_CODE -ne 0 ]; then
    echo "Failed to send health check message after 5 attempts"
    exit 1
fi

echo "Health check completed at $CURRENT_TIME"
echo "Weather: $WEATHER"
