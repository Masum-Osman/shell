#!/bin/bash

YESTERDAY=`TZ=GMT+18 date +%-d-%-m-%Y`;

formatted=$(echo $YESTERDAY | tr "-" "_")

collection="dynamic_everyday_collection_"$formatted;
# echo $collection;

#collection="dataofweek17of2021";

# dynamic_everyday_collection__15_8_2021
# dynamic_everyday_collection__8_9_2021

sudo mongodump  --host [HOST ADDRESS]  --port [HOST PORT]  --db [DATABASE]   --collection $collection --username dbOwner --password "PASSWORD" --out /home/mongo_dump/aws_analytics_Server_day-$collection;