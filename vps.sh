#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # 重置颜色

clear;
response=$(curl -s -I -w "%{http_code}\n" -o /dev/null chat.openai.com)

if [ "$response" -eq 403 ]; then
    echo -e "chatGPT:${RED}不支持${NC}"
else
    echo -e "chatGPT:${GREEN}支持${NC}"
fi

response=$(curl -s -I -w "%{http_code}\n" -o /dev/null netflix.com)

if [ "$response" -eq 403 ]; then
    echo -e "NetFlix:${RED}不支持${NC}"
else
    echo -e "NetFlix:${GREEN}支持${NC}"
fi