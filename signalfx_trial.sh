#!/bin/bash
# This code will send the random numbers genarated to signal fx for performing analytics.
#while true
#do
   # Set the SignalFx API token  via the "Access tokens" link next to the organization in your Profile page
   SF_TOKEN="opJIzAUzNiJbJrcvfDMgeQ"
   #number=$RANDOM
   number=$1
   echo $number
   # Send a datapoint via HTTP POST request using cURL
   curl --request POST \
   --header "Content-Type: application/json" \
   --header "X-SF-Token:$SF_TOKEN" \
   --data \
   '{ "gauge": [{
       "metric": "timer2.sequence",
       "dimensions": { "host": "macbookairs-Air" },
       "value": "'"$number"'"
   }]}' \
   https://ingest.signalfx.com/v2/datapoint
  # sleep 30
#done
