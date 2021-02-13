#!/bin/sh

ROUTE_NAME="$(git config --get remote.origin.url | sed 's/.*\/\([^ ]*\/[^.]*\).*/\1/')"
MAIN_URL="https://github.surf/"

if [ "$1" == "." ] && [ "$2" == "-b" ]; then
    python -m webbrowser $MAIN_URL$ROUTE_NAME+$3
    exit 2
fi

if [ "$1" == "." ]; then
    python -m webbrowser $MAIN_URL$ROUTE_NAME
    exit 1
fi