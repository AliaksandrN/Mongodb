#!/bin/bash

if [ -f /tmp/standalone/1.log ]; then
  rm -rf /tmp/standalone
fi

mkdir -p /tmp/standalone

mongod --logpath /tmp/standalone/1.log --dbpath /tmp/standalone --bind_ip 127.0.0.1, --oplogSize 128 --wiredTigerJournalCompressor zlib --wiredTigerCollectionBlockCompressor zlib &




