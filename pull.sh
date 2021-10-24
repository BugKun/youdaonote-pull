#!/bin/sh

# exit while error
set -o errexit

source python_venv/Scripts/activate && python ./pull.py && deactivate
git add .
git commit -m 'pull: 拉取笔记'
git push origin master