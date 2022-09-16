#!/bin/sh
cd "$(realpath "$(dirname "$0")")" || exit
if ! [ -d "node_modules" ]; then
    echo "Could not find node_modules... installing necessary dependencies"
    npm install --quiet --package-lock=false
fi
PORT=8314 npx netlify-cms-proxy-server