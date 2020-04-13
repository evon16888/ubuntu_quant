#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "正在系统更新..."
sudo apt-get update

echo "正在安装pip3"
sudo apt-get install python3-pip

echo "正在安装pandas"
sudo pip3 install pandas

echo "正在安装ccxt"
sudo pip3 install ccxt

echo "正在安装pymysql"
sudo pip3 install pymysql

echo "正在安装sqlalchemy"

sudo pip3 install sqlalchemy

echo "正在安装宝塔"
wget -O install.sh http://download.bt.cn/install/install-ubuntu_6.0.sh && sudo bash install.sh
