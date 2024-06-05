##Migration komutu

redis-cli -h 10.1.50.53 -p 6379 -a h9yX5Udq KEYS "SELLER_INVOICE_BULK_PDF_*" | xargs -I '{}' redis-cli -h 10.1.50.53 -p 6379 -a h9yX5Udq MIGRATE 10.85.245.44 6379 "" 0 5000 COPY AUTH DMYutBH3qS6d3OX2 KEYS '{}'

##ZSET Dökümanları görüntülemek için
#ZRANGE {KEY_NAME} 0 -1
ZRANGE SELLER_INVOICE_BULK_PDF_1918 0 -1
