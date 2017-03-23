#!/bin/bash

function sendDingdingRobotText() {
    TOKEN=$1
    TEXT=$2
    MOBILES=$3
    ISATALL=$4

    if [[ -z "$MOBILES" ]]; then MOBILES=[]
    fi

    if [[ -z "$ISATALL" ]]; then ISATALL=false
    fi

    curl -H "Content-Type:application/json" -d "{\"msgtype\": \"text\", \"text\":{\"content\":\"$TEXT\"}, \"at\":{\"atMobiles\":$MOBILES, \"isAtAll\":$ISATALL} }" "https://oapi.dingtalk.com/robot/send?access_token=$TOKEN"
}