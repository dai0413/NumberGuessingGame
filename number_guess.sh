#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
echo "Enter your username:"

############ fix: argument name ########################
read USERNAME

if [[ ${#USERNAME} -gt 22 ]]; then
  echo "Error: Username must be 22 characters or fewer."
  exit 1
fi

GET_USER_ID() {
  NAME=$1
  echo $($PSQL "
  SELECT user_id FROM users 
  WHERE name='$NAME'
  ;")
}

WELCOME_BACK(){
  USERNAME=$1
  USERID=$2

  BESTSCORE=$($PSQL "
    SELECT MIN(score) FROM playlogs
    WHERE user_id=$USERID;
  ")
  if [[ -z $BESTSCORE ]]
  then
    BESTSCORE=0
  fi

  GAMESPLAYED=$($PSQL "
    SELECT COUNT(*) FROM playlogs
    WHERE user_id=$USERID;
  ")

  echo -e "\nWelcome back, $USERNAME! You have played $GAMESPLAYED games, and your best game took $BESTSCORE guesses."
}

USERID=$(GET_USER_ID "$USERNAME")

if [[ -z $USERID ]]
then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."

  INSERTRESULT=$($PSQL "
    INSERT INTO users(name)
    VALUES('$USERNAME');
  ")

  USERID=$(GET_USER_ID "$USERNAME")
else
  WELCOME_BACK "$USERNAME" "$USERID"
fi

############ fix: add guess time ########################

echo "Guess the secret number between 1 and 1000:"

read GUESSEDNUMBER

NUMBER=$(( RANDOM % 1000 + 1 ))
SCORE=0

while true
do
  if [[ $GUESSEDNUMBER =~ ^[0-9]+$ ]]
  then
    (( SCORE++ ))
    if [[ $GUESSEDNUMBER -gt $NUMBER ]]
    then
      echo "It's lower than that, guess again:"
    elif [[ $GUESSEDNUMBER -lt $NUMBER ]]
    then
      echo "It's higher than that, guess again:"
    else
      echo "You guessed it in $SCORE tries. The secret number was $NUMBER. Nice job!"
      break
    fi  
  else
    echo "That is not an integer, guess again:"
  fi
  read GUESSEDNUMBER
done

############ fix: add log ########################

LOGRESULT=$($PSQL "
  INSERT INTO playlogs(user_id, score)
  VALUES($USERID, $SCORE);
")