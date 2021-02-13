#!/bin/sh

ROUTE_NAME="$(git config --get remote.origin.url | sed 's/.*\/\([^ ]*\/[^.]*\).*/\1/')"
MAIN_URL="https://github.surf/"

if [ $(find .git | wc -l) == 0 ]; then
    echo "There is no github setting."
    echo "Please proceed with github initial setup."
    exit 9;
fi

if [ "$1" == "." ] && [ "$2" == "-b" ]; then
    python -m webbrowser $MAIN_URL$ROUTE_NAME+$3
    exit 2
fi

if [ "$1" == "." ]; then
    python -m webbrowser $MAIN_URL$ROUTE_NAME
    exit 1
fi