#!/bin/sh

# exit while error
set -o errexit

mv note note_bk
mkdir note
mv note_bk/.git/ note/.git/
source python_venv/Scripts/activate && python ./pull.py && deactivate
rm -i -rf ./note_bk
git add .
git commit -m 'sync: 同步笔记'
git push origin master