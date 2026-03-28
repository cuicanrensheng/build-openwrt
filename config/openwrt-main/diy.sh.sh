#!/bin/bash
sed -i 's/github.com/gitee.com/g' feeds.conf.default
echo "src-git rtp2httpd https://gitee.com/chenmozhijin/rtp2httpd-lede.git" >> feeds.conf.default
./scripts/feeds update rtp2httpd
./scripts/feeds install -a -p rtp2httpd
