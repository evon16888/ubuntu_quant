#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "正在系统更新..."
sudo apt-get update

echo "正在安装pip3"
sudo apt-get install python3-pip

echo "正在安装pandas"
pip3 install pandas

echo "正在安装ccxt"
pip3 install ccxt

echo "正在安装pymysql"
pip3 install pymysql

echo "正在安装sqlalchemy"

pip3 install sqlalchemy

echo "安装编译工具"
sudo apt install build-essential wget -y

echo "下载源码并解包"
wget https://artiya4u.keybase.pub/TA-lib/ta-lib-0.4.0-src.tar.gz
tar -xvf ta-lib-0.4.0-src.tar.gz
cd ta-lib/
echo "开始编译安装TA-Lib"
./configure --prefix=/usr
make
sudo make install
sudo pip3 install TA-Lib

echo "正在安装宝塔"
wget -O install.sh http://download.bt.cn/install/install-ubuntu_6.0.sh && sudo bash install.sh
