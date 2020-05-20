#!/usr/bin/env bash
link="http://www.tvboxnow.com/thread-5335878-1-1.html"
read -p "第幾集？" EP
curl $link | grep torrent | grep H265 | sed 's/.*href=\"\(at.*\)\"/\1/g' | grep EP$EP | sed 's/\".*//g'
link2download=$(curl $link | grep torrent | grep H265 | sed 's/.*href=\"\(at.*\)\"/\1/g' | grep EP$EP | sed 's/\".*//g')
download_torrent=$(curl -L "http://www.tvboxnow.com/$link2download" | grep 如果 | sed 's/.*href=\"\(at.*\)\"/\1/g' | sed 's/\".*//g')
echo http://www.tvboxnow.com/$download_torrent
echo http://www.tvboxnow.com/$download_torrent
echo http://www.tvboxnow.com/$download_torrent
curl -o $EP.torrent -L http://www.tvboxnow.com/$download_torrent
