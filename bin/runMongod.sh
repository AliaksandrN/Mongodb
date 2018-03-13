#!/bin/bash

# $1 - port
# $2 - replSet arg is <setname>[/<optionalseedhostlist>]
# $3 - dbPath directory for datafiles - defaults to /data/db


if [[ "$#" -ne 3 ]]; then

  mongod --port $1 --replSet $2 --dbpath $3 --bind_ip localhost --oplogSize 128 \
	--wiredTigerJournalCompressor zlib \
	--wiredTigerCollectionBlockCompressor zlib

else
  echo "Required 3 arguments"
fi
