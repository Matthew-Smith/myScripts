root='/var/www/html'
tempIP=$(ifconfig eth0 | grep inet | awk '{print $2}' | cut -d':' -f2)
IP=$(echo "${tempIP}" | tr -d '[[:space:]]')
subDir='/Screenshots/'
fileName=$(date +%Y.%m.%d-%H.%M.%S.png)

scrot -s $root$subDir$fileName

echo $IP$subDir$fileName | xclip -selection clipboard
