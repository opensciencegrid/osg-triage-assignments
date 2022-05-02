#!/bin/bash
set -e

cd "$(dirname "$0")"

[[ -d venv ]] || python3 -m venv venv

. venv/bin/activate

pip install --upgrade pip
pip install -r requirements.txt

./triage.py

