#!/bin/sh
# sing-box Alpine Linux 自动卸载脚本（无需确认）

set -e

GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}[1/3] 正在停止服务...${NC}"
rc-service sing-box stop 2>/dev/null || true
rc-update del sing-box default 2>/dev/null || true

echo -e "${GREEN}[2/3] 正在删除文件...${NC}"
rm -rf /etc/sing-box /var/lib/sing-box
rm -f /etc/init.d/sing-box
rm -f /usr/bin/sing-box

echo -e "${GREEN}[3/3] 正在删除证书...${NC}"
rm -f /etc/ssl/private/bing.com.key /etc/ssl/private/bing.com.crt

echo -e "${GREEN}✓ sing-box 已完全卸载！${NC}"
