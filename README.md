# Log Analyzer

A bash script that analyzes web server access logs and generates summary report. It extracts useful insights like total requests, unique visitors, most active IPS, HTTP status code breakdown and lists of error requests.

## What it analyzes
- Total number of requests
- Number of unique visitors
- Top visitors, ranked by request count
- HTTP code breakdown 200, 404, 500
- List of error requests, with their pages

## How to run it
bash analyzer.sh

## How to save report to a file
bash analyzer.sh > filename.txt
