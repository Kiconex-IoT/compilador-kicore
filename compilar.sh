#!/bin/bash
systemctl stop kicore.service
echo -e "\nREACT_APP_VPN_URL=http://172.17.25.15" >> frontend/.env
cd ./frontend
npm run build
systemctl start kicore.service
systemctl status kicore.service
