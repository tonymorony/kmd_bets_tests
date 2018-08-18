#!/bin/bash
#Using bets.txt to check if bet won or lose
COUNTER=0
SCORE=0
while IFS= read -r line; do
    result=$(./komodo-cli -ac_name=BOLT dicestatus TONY 29219de99617b4f0f79018b7c9302fcb81f780e226b16cf8e8d156642d6babfd $line | jq -r .status)
    let COUNTER=COUNTER+1

    if [ $result == 'win' ]
    then
       let SCORE=SCORE+1
    fi

done < <(grep . bets.txt)

echo "Total attempts "$COUNTER". Total wins "$SCORE""
