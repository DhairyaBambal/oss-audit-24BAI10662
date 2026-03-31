#!/bin/bash
echo "===== System Identity Report ====="
echo "User: $(whoami)"
echo "Home Directory: $HOME"
echo "Kernel Version: $(uname -r)"
echo "Uptime: $(uptime -p)"
echo "Date & Time: $(date)"
echo "License: GNU GPL"

