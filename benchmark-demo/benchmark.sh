#!/bin/sh
ipinfo=$(curl -s ipinfo.io | jq -r ".region")
result=$(wrk  -t10 -c10 -d30s $1 -s report_json.lua | tail -1 | jq -c --arg ipinfo "$ipinfo" '.region = $ipinfo')
echo $result
curl -X POST http://81.68.122.162:8000/benchmark_report -H 'Content-Type: application/json' -d "$result" $2
