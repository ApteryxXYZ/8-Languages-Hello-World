FILE_NAME="text.txt"
FILE_CONTENT="`cat $FILE_NAME`"
STATE=$1

if [ "$STATE" != "end" ]
then
    > $FILE_NAME
    go run go.go
    ./bash.bash end
else
    echo $FILE_CONTENT
fi
