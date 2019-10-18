#!/bin/sh
twurlCMD="twurl -d"

# Index intended to carry a post control and avoid repeated or spurious posts. Advance a position before trying to post.
indexFile=/index
postIndex=$(cat $indexFile)
postIndex=$((postIndex+1))

# Source of content.
newContent=$(wget -O - https://t.me/colibri_informa/$postIndex|grep og:description|grep -o COLIBR.*|cut '-d"' -f 1|perl -MHTML::Entities -pe 'decode_entities($_);')

# Post upon successful sanity checks. Otherwise, decrease the index.
echo $newContent |grep -q INFORMA
if [ $? -eq 0 ]; then
	$twurlCMD "status=$newContent" /1.1/statuses/update.json
	echo $postIndex > $indexFile
else
	postIndex=$((postIndex-1))
	echo $postIndex > $indexFile
fi
