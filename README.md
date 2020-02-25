本shell的主要作用是基于Ubuntu 18.04安装量化环境的一键安装脚本

    wget -N --no-check-certificate https://raw.githubusercontent.com/evon16888/ubuntu_quant/master/bin.sh && bash bin.sh

安装的时候ccxt有些机器上有报错，我用的轻应用服务器完全OK，但ECS会出现一些错误信息，所以如果出现错误信息，我们就补刀吧。

https://pypi.org/project/ccxt/#files  找到最新的whl文件，手动安装一下即可

    pip3 install ccxt*.whl
