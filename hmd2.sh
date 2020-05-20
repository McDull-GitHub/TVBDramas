link="http://www.tvboxnow.com/thread-5335878-1-1.html"
read EP
curl $link | grep torrent | grep H265 | sed 's/.*href=\"\(at.*\)\"/\1/g' | grep EP$EP | sed 's/\".*//g'
