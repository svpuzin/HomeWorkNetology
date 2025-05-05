#!/bin/bash

REPO_URL="https://github.com/svpuzin/shvirtd-example-python.git"
DEST_DIR="/opt/shvirtd-example-python"
git clone $REPO_URL $DEST_DIR
cd $DEST_DIR
docker compose up -d
