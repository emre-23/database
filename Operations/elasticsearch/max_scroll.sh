curl -X PUT "http://localhost:9200/_cluster/settings" -H 'Content-Type: application/json' -d'
{
  "persistent": {
    "search.max_open_scroll_context": 10000
  }
}
'



curl -X GET "http://localhost:9200/_nodes/stats/indices/search?pretty"


curl -X PUT "http://localhost:9200/_cluster/settings" -H 'Content-Type: application/json' -d'{
    "persistent" : {
        "search.max_open_scroll_context": 1000
    },
    "transient": {
        "search.max_open_scroll_context": 1000
    }
}'
