REPO="https://raw.githubusercontent.com/AngIMAN/wiz4rd/MONSTER/file"
wget -q -O /etc/systemd/system/vmess.service "${REPO}/vmess.service" && chmod +x vmess.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/vless.service "${REPO}/vless.service" && chmod +x vless.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/trojan.service "${REPO}/trojan.service" && chmod +x trojan.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/shadowsocks.service "${REPO}/shadowsocks.service" && chmod +x shadowsocks.service >/dev/null 2>&1
wget -q -O /etc/xray/.vmess "${REPO}/vmess" >/dev/null 2>&1
wget -q -O /etc/xray/.vless "${REPO}/vless" >/dev/null 2>&1
wget -q -O /etc/xray/.trojan "${REPO}/trojan" >/dev/null 2>&1
wget -q -O /etc/xray/.shadowsocks "${REPO}/shadowsocks" >/dev/null 2>&1
chmod +x /etc/xray/.vmess
chmod +x /etc/xray/.vless
chmod +x /etc/xray/.trojan
chmod +x /etc/xray/.shadowsocks
systemctl daemon-reload
systemctl enable --now vmess
systemctl enable --now vless
systemctl enable --now trojan
systemctl enable --now shadowsocks
# systemctl start vmess
# systemctl start vless
# systemctl start trojan
# systemctl start shadowsocks
# systemctl restart vmess
# systemctl restart vless
# systemctl restart trojan
# systemctl restart shadowsocks
