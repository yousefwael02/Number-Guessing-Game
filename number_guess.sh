#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=games -t --no-align -c"

echo "Enter your username:"
read USERNAME

USERNAME_RESULT=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME'")

if [[ -z $USERNAME_RESULT ]]
then 
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_USERNAME=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
else
  GAMES_PLAYED=$($PSQL "SELECT count(game_id) FROM games WHERE username='$USERNAME'")
  BEST_GAME=$($PSQL "SELECT min(guess) FROM games WHERE username='$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
echo "Guess the secret number between 1 and 1000:"
GUESS_COUNT=0
read USER_GUESS
echo $SECRET_NUMBER
until [[ $USER_GUESS == $SECRET_NUMBER ]]
do
  if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]
  then 
    echo "That is not an integer, guess again:"
    read USER_GUESS
    ((GUESS_COUNT++))
  else
    if [[ $USER_GUESS < $SECRET_NUMBER ]]
    then
      echo "It's higher than that, guess again:"
      read USER_GUESS
      ((GUESS_COUNT++))
    else
      echo "It's lower than that, guess again:"
      read USER_GUESS
      ((GUESS_COUNT++))
    fi
  fi
done

((GUESS_COUNT++))

INSERT_RESULT=$($PSQL "INSERT INTO games(guess, username) VALUES('$GUESS_COUNT', '$USERNAME')")

echo "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"