#!/bin/sh

if [ $1 ]
then
  curl --verbose \
       --request PUT \
       http://localhost:5100/api/v1/votes/$1
else
  echo "Must include entry ID as argument"
  echo "EXAMPLE:"
  echo "    ./upVoteEntry.sh <####>"
fi
