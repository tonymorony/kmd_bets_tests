Test for the Komodo betting smart-contract.

1) Put all scripts to ~/komodo/src
2) Set needed AC, dicebet SC name, Dice ID (in all three scripts) and amount of bets as limitation in place_bet.sh
3) Run ./place_bet.sh which will generate bets.txt file (ID of bets transactions)
4) Run ./confirm_bets.sh which will finish execute dicefinish for all ID's from bets.txt
5) Run ./check_bet_results.sh which will caclulate Wins for all ID's from bets.txt

Actually it's a raw version for semi-automatical bets pushing by re-execute each of the scripts.
There is three parts for now because transactions confirmation needed and you'll may need to re-execute one part of this flow.
