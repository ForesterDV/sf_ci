curl -s -o response.txt http://localhost:9889
md5sum_response=$(md5sum response.txt | awk '{ print $1 }')
md5sum_index=$(md5sum index.html | awk '{ print $1 }')
if [ "$md5sum_response" == "$md5sum_index" ]; then
    echo "MD5 OK" | mail -s "CI-CD" gdv4admob@gmail.com
else
    echo "MD5 is not ok" | mail -s "CI-CD" gdv4admob@gmail.com
fi
