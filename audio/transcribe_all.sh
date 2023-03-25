#!/usr/bin/env bash

set -x
set -e

apt-get update && apt-get install git -y
pip3 install -r ../requirements.txt
pip3 install "git+https://github.com/openai/whisper.git" 
apt-get install -y ffmpeg
python3 transcribe_all.py