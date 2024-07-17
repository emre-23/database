#!/bin/bash

INDEX_FILE="/opt/es-02_index_names.txt"

# Check if the index file exists
if [[ ! -f $INDEX_FILE ]]; then
  echo "Index file not found!"
  exit 1
fi

while IFS= read -r index; do
  curl -H "Content-Type: application/json" -X POST "http://localhost:9200/_reindex?pretty" -d '{
    "source": {
      "remote": {
        "host": "IP:9200"
      },
      "index": "'"$index"'"
    },
    "dest": {
      "index": "'"$index"'"
    }
  }'
done < "$INDEX_FILE"