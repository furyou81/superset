#!/usr/bin/env bash

echo "--------------------- installing firefox and geckodriver -----------------------"
apt-get update && apt-get install -y firefox-esr

wget https://github.com/mozilla/geckodriver/releases/download/v0.24.0/geckodriver-v0.24.0-linux64.tar.gz

tar -x geckodriver -zf geckodriver-v0.24.0-linux64.tar.gz -O > /usr/bin/geckodriver
chmod +x /usr/bin/geckodriver
rm geckodriver-v0.24.0-linux64.tar.gz
echo "--------------------------------------------"