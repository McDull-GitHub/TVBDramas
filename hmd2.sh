#!/usr/bin/env bash
link="http://www.tvboxnow.com/thread-5335878-1-1.html/"
read -p "第幾集？" EP
link=$link$(`curl $link | grep torrent | grep H265 | sed 's/.*href=\"\(at.*\)\"/\1/g' | grep EP$EP | sed 's/\".*//g'`)
echo $link
