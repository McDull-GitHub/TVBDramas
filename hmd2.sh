#!/usr/bin/env bash
link="http://www.tvboxnow.com/thread-5335878-1-1.html"
read -p "第幾集？" EP
curl $link | grep torrent | grep H265 | sed 's/.*href=\"\(at.*\)\"/\1/g' | grep EP$EP | sed 's/\".*//g'
link2download=$(curl $link | grep torrent | grep H265 | sed 's/.*href=\"\(at.*\)\"/\1/g' | grep EP$EP | sed 's/\".*//g')
curl http://www.tvboxnow.com/$link2download | grep attachment | sed 's/.*\"(attachment.*)/\1/g' | sed 's/\".*//g'
