#!/bin/bash
echo "Content-type: text/plain"
echo ""
CPU_IDLE=$(LANG=C mpstat 1 1 | awk '/Average/ {print 100 - $NF}')
echo "CPU Usage: $CPU_IDLE%"
