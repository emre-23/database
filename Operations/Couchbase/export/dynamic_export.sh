#!/bin/bash

COUCHBASE_HOST="couchbase://IP"
USERNAME="User"
PASSWORD="Pass"
OUTPUT_DIR="/home/pe"

while IFS= read -r bucket; do
  if [[ -z "$bucket" ]]; then
    continue
  fi

  OUTPUT_FILE="$OUTPUT_DIR/${bucket}.json"

  echo "Exporting bucket: $bucket to $OUTPUT_FILE..."

  /opt/couchbase/bin/cbexport json \
    -c "$COUCHBASE_HOST" \
    -u "$USERNAME" \
    -p "$PASSWORD" \
    -b "$bucket" \
    -f lines \
    -o "$OUTPUT_FILE" \
    --scope-field _scope \
    --collection-field _collection

  if [[ $? -ne 0 ]]; then
    echo "Error exporting bucket: $bucket"
  else
    echo "Successfully exported bucket: $bucket"
  fi
done < bucketnames.txt
