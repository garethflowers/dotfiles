#!/bin/bash

echo ""
[ $(date +%H ) -gt 12 ] && TOD=Afternoon || TOD=Morning
echo "  Good $TOD Gareth!"
