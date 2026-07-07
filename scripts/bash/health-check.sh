#!/usr/bin/env bash

declare -A SERVICES=(
    ["Gateway"]=18080
    ["Complaint"]=18081
    ["User"]=18082
    ["Chat"]=18083
    ["Notification"]=18084
)

for service in "${!SERVICES[@]}"; do
    port=${SERVICES[$service]}
    status=$(curl -o /dev/null -s -w "%{http_code}" http://localhost:${port}/health)
    printf "%-15s %s\n" "$service" "$status"
done