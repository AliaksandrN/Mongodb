#!/bin/bash

rm -rf /tmp/data-*

mkdir -p /tmp/data-{1,2,3}

mongod --port 27017 --replSet replSet --logpath /tmp/data-1/1.log --dbpath /tmp/data-1 --bind_ip 127.0.0.1, --oplogSize 128 --wiredTigerJournalCompressor zlib --wiredTigerCollectionBlockCompressor zlib &
mongod --port 27018 --replSet replSet --logpath /tmp/data-2/2.log --dbpath /tmp/data-2 --bind_ip 127.0.0.1, --oplogSize 128 --wiredTigerJournalCompressor zlib --wiredTigerCollectionBlockCompressor zlib &
mongod --port 27019 --replSet replSet --logpath /tmp/data-3/3.log --dbpath /tmp/data-3 --bind_ip 127.0.0.1, --oplogSize 128 --wiredTigerJournalCompressor zlib --wiredTigerCollectionBlockCompressor zlib &

