#!/bin/bash
BETS=0
while [ $BETS -lt 1 ]; do
    hash=$(./komodo-cli -ac_name=BOLT dicebet TONY 29219de99617b4f0f79018b7c9302fcb81f780e226b16cf8e8d156642d6babfd 10 2 | jq -r .hex)
    ./komodo-cli -ac_name=BOLT sendrawtransaction $hash >> bets.txt
    let BETS=BETS+1
done
