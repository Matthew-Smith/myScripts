root='/home/matthewsmith/http'
# tempIP=$(ifconfig eth0 | grep inet | awk '{print $2}' | cut -d':' -f2)
tempIP=$(ip addr show enp0s31f6 | awk '/inet / {gsub(/\/.*/,"",$2); print $2}')
IP=$(echo http://"${tempIP}" | tr -d '[[:space:]]')
subDir='/Screenshots/'
fileName=$(date +%Y.%m.%d-%H.%M.%S.png)

echo $root$subDir$fileName
scrot -s $root$subDir$fileName

echo $IP$subDir$fileName
echo $IP$subDir$fileName | xclip -selection clipboard
