#!/bin/bash

USER="Administrator"
PASSWORD="passwd123!"
BASE_URL="127.0.01:8091"

cd /opt/couchbase/bin

./cbq -u $USER -p $PASSWORD -e $BASE_URL <<EOF
DELETE FROM \`StorefrontMarketing\`
WHERE META().id LIKE 'pdp_alt%';
EOF
