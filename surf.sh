#!/bin/sh

ROUTE_NAME="$(git config --get remote.origin.url | sed 's/.*\/\([^ ]*\/[^.]*\).*/\1/')"
MAIN_URL="https://github.surf/"

if [ "$1" == "" ] || [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    echo ""
    echo "---------------------Github Surf 🏄‍♂️-------------------"
    echo ""
    echo "Development By @Bridged"
    echo "📮 Report To https://github.com/bridgedxyz/surf-cli/issues"
    echo ""
    echo "---------------------Command List---------------------"
    echo ""
    echo "surf -h, surf --help, surf : Show Command List"
    echo "surf .                     : Open Current Directory"
    echo "surf ..                    : Open Current Directory Use Visual Studio Code"
    echo "surf . -b <branch-name>    : Open Current Directory + Other Branch"
    echo ""
    exit 0;
fi

if [ $(find .git | wc -l) == 0 ]; then
    echo "There is no github setting."
    echo "Please proceed with github initial setup."
    exit 9;
fi

if [ "$1" == ".." ]; then
    open -a Visual\ Studio\ Code.app .
    exit 3;
fi

if [ "$1" == "." ] && [ "$2" == "-b" ]; then
    python -m webbrowser $MAIN_URL$ROUTE_NAME+$3
    exit 2
fi

if [ "$1" == "." ]; then
    python -m webbrowser $MAIN_URL$ROUTE_NAME
    exit 1
fi