#!/bin/bash
# Log analyzer - analyzes web server access logs

LOG="access.log"
REPORT="report_$(date +%Y-%m-%d_%H-%M-%S)"
echo "=================================================="
echo "             LOG ANALYSIS REPORT                  "
echo "=================================================="

echo ""
echo "Total requests:"
wc -l < $LOG

echo ""
echo "Unique visitors:"
awk '{print $1}' $LOG | sort | uniq | wc -l

echo ""
echo "Top visitors (by request count):"
awk '{print $1}' $LOG | sort | uniq -c | sort -rn

echo ""
echo "HTTP Status codes:"
awk '{print $NF}' $LOG | sort | uniq -c | sort -rn

echo ""
echo "Error requests (404 and 500):"
grep -E "404|500" $LOG | awk '{print $5, $6, $7}'

echo ""
echo "Report saved to screen. To save file run: bash analyzer.sh > filename.txt"
