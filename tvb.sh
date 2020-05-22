bash -c "$(curl -fsSL https://raw.githubusercontent.com/McDull-GitHub/TVBDramas/master/hmd2.sh)"
n=3 #`aria2c -S *.torrent | grep mp4 | cut -c1`
aria2c --seed-time=0 --select-file=$n *.torrent
rm *.aria2
cd TVBOX*
IFS=$'\n'
file=`ls *.mp4`
upfile=`echo $file | sed 's/TVBOXNOW\ //g'` 
mv $file ../$upfile
cd .. 
pip3 install telethon --user
echo $upfile
# rm -rf TVBOXNOW* *.torrent *.mp4
python3 u2tg.py ./$upfile



