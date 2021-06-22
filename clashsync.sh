#!/bin/bash
wget -O config.yaml -q - "https://xxx(clash subscription address)"
cp config.yaml /home/user/.config/clash/
service clash restart
