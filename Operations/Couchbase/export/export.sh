/opt/couchbase/bin/cbexport json \
  -c couchbase://IPv4 \
  -u Admin \
  -p passwd \
  -b Buyback \
  -f lines \
  -o buyback_bucket.json \
  --scope-field _scope \
  --collection-field _collection
