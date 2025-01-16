#!/usr/bin/env bash

declare -r MESSAGE_NAME="CURRENT-MESSAGE.TXT"

sending() {   
    cat > $MESSAGE_NAME
    
    git add $MESSAGE_NAME
    git commit -m "message"
    git push
}


receiving() {
    git pull
    cat $MESSAGE_NAME
}