#!/bin/bash
#Using bets.txt as input to finish the game
while IFS= read -r line; do
    ./komodo-cli -ac_name=BOLT dicefinish TONY 29219de99617b4f0f79018b7c9302fcb81f780e226b16cf8e8d156642d6babfd $line
done < <(grep . bets.txt)
