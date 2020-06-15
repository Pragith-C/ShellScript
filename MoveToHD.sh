#! /bin/sh
# MoveToHD by Pragith Chenthuran
# DISCLAIMER: Though the program is built to have no data loss, it only saves
# 2 of the duplicates of a file. If you are going to add an addditional
# directory to backup from, then beware. Hence if there is more than 2 of the same
# file only those two will be preserved. As well I am not responsible for any
# data loss due to running this script. Any bugs, please report it on GitHub!

desktop=/Users/starstar/Desktop
downloads=/Users/starstar/Downloads
hardrive=/Volumes/Seagate\ Backup\ Plus\ Drive/Random
ondrivebackup=/Users/starstar/Documents/MoveToHD
progNum=8;

mv -n "$desktop"/* "$ondrivebackup"/ 2> /dev/null
mv -n "$downloads"/* "$ondrivebackup"/ 2> /dev/null
mkdir "$ondrivebackup"/"$(date)DuplicatesDesktop"
mkdir "$ondrivebackup"/"$(date)DuplicatesDocuments"

mv "$desktop"/* "$ondrivebackup"/"$(date)DuplicatesDesktop" 2> /dev/null
mv "$downloads"/* "$ondrivebackup"/"$(date)DuplicatesDownloads" 2> /dev/null

echo "Progress: Computer Files Have Been Combined (1/"$progNum")"
if [ ! -d "$hardrive"/Random\ Pictures ]; then
  mkdir "$hardrive"/Random\ Pictures
fi
mv -n "$ondrivebackup"/*.png "$hardrive"/Random\ Pictures 2> /dev/null
mv -n "$ondrivebackup"/*.jpg "$hardrive"/Random\ Pictures 2> /dev/null
mv -n "$ondrivebackup"/*.jpeg "$hardrive"/Random\ Pictures 2> /dev/null
mv -n "$ondrivebackup"/*.gif "$hardrive"/Random\ Pictures 2> /dev/null
mv -n "$ondrivebackup"/*.JPG "$hardrive"/Random\ Pictures 2> /dev/null
echo "Progress: Images Have Been Transfered to HD (2/"$progNum")"
if [ ! -d "$hardrive"/Random\ Documents ]; then
  mkdir "$hardrive"/Random\ Documents
fi
mv -n "$ondrivebackup"/*.pdf "$hardrive"/Random\ Documents 2> /dev/null
mv -n "$ondrivebackup"/*.PDF "$hardrive"/Random\ Documents 2> /dev/null
mv -n "$ondrivebackup"/*.xlsx "$hardrive"/Random\ Documents 2> /dev/null
mv -n "$ondrivebackup"/*.doc "$hardrive"/Random\ Documents 2> /dev/null
mv -n "$ondrivebackup"/*.docx "$hardrive"/Random\ Documents 2> /dev/null
echo "Progress: Documents Have Been Transfered to HD (3/"$progNum")"
if [ ! -d "$hardrive"/Random\ Videos ]; then
  mkdir "$hardrive"/Random\ Videos
fi
mv -n "$ondrivebackup"/*.MOV "$hardrive"/Random\ Videos 2> /dev/null
mv -n "$ondrivebackup"/*.mov "$hardrive"/Random\ Videos 2> /dev/null
mv -n "$ondrivebackup"/*.mp4 "$hardrive"/Random\ Videos 2> /dev/null
mv -n "$ondrivebackup"/*.MP4 "$hardrive"/Random\ Videos 2> /dev/null
mv -n "$ondrivebackup"/*.mkv "$hardrive"/Random\ Videos 2> /dev/null
echo "Progress: Videos Have Been Transfered to HD (4/"$progNum")"
if [ ! -d "$hardrive"/Random\ C\ Files ]; then
  mkdir "$hardrive"/Random\ C\ Files
fi
mv -n "$ondrivebackup"/*.c "$hardrive"/Random\ C\ Files 2> /dev/null
mv -n "$ondrivebackup"/*.C "$hardrive"/Random\ C\ Files 2> /dev/null
echo "Progress: C Files Have Been Transfered to HD (5/"$progNum")"
if [ ! -d "$hardrive"/Random\ Python\ Files ]; then
  mkdir "$hardrive"/Random\ Python\ Files
fi
mv -n "$ondrivebackup"/*.py "$hardrive"/Random\ Python\ Files 2> /dev/null
echo "Progress: Python Files Have Been Transfered to HD (6/"$progNum")"
if [ ! -d "$hardrive"/Random\ Developer\ Files ]; then
  mkdir "$hardrive"/Random\ Developer\ Files
fi
mv -n "$ondrivebackup"/*.lua "$hardrive"/Random\ Developer\ Files 2> /dev/null
mv -n "$ondrivebackup"/*.ipa "$hardrive"/Random\ Developer\ Files 2> /dev/null
echo "Progress: Developer Files Have Been Transfered to HD (7/"$progNum")"
if [ ! -d "$hardrive"/Random\ Files\ and\ Folder ]; then
  mkdir "$hardrive"/Random\ Files\ and\ Folder
fi
mv -n "$ondrivebackup"/*.dmg "$hardrive"/Random\ Files\ and\ Folder 2> /dev/null
mv -n "$ondrivebackup"/*.zip "$hardrive"/Random\ Files\ and\ Folder 2> /dev/null
mv -n "$ondrivebackup"/*.gz "$hardrive"/Random\ Files\ and\ Folder 2> /dev/null
mv -n  "$ondrivebackup"/*/ "$hardrive"/Random\ Files\ and\ Folder 2> /dev/null

mkdir "$hardrive"/Random\ Files\ and\ Folder/"Duplicates with Files $(date)"
mv "$ondrivebackup"/* "$hardrive"/Random\ Files\ and\ Folder/"Duplicates with Files $(date)" 2> /dev/null

echo "Progress: All Files Have Been Transfered to HD (8/8)"
echo "Thanks for using MoveToHD"
exit 0
