#!/bin/bash

if [ -z "$UPSTREAM_REPO" ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ihyvesta/Clone.git /Clone
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO"
  git clone "$UPSTREAM_REPO" /Clone
fi

pip3 install -U -r /Clone/requirements.txt
echo "Starting Clone..."
python3 /Clone/bot.py
