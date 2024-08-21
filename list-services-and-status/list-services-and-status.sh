#!/bin/bash

echo ""
echo "# All started services and their uptime"
echo ""

# get folder content and iterate over it
for service in /service/*; do
    # get service status
    svstat "$service" | grep ": up "
done

echo ""
echo ""

echo "# All stopped services and their downtime"
echo ""

# get folder content and iterate over it
for service in /service/*; do
    # get service status
    svstat "$service" | grep ": down "
done

echo ""
