(
  max by (_federation, _region, _team, _environment, _cluster) (
    max by (_federation, _region, _team, _environment, _cluster, index) (
      rate(elasticsearch_index_stats_search_query_total{_app="elasticsearch", _region=~"$region", _team=~"$team", _cluster=~".*", _hostname!~".*backup.*", index!~".*test.*|.monitoring.*|.geo.*|.apm.*|.kibana.*"}[5m])
    )
  ) == 0
)
and
(
  max by (_federation, _region, _team, _environment, _cluster) (
    max by (_federation, _region, _team, _environment, _cluster, index) (
      rate(elasticsearch_index_stats_indexing_index_total{_app="elasticsearch", _region=~"$region", _team=~"$team", _cluster=~".*", _hostname!~".*backup.*", index!~".*test.*|.monitoring.*|.geo.*|.apm.*|.kibana.*"}[5m])
    )
  ) == 0
)

sum (elasticsearch_jvm_memory_used_bytes{_region="mars",_team="discovery",_cluster=~".*"}) / sum (elasticsearch_jvm_memory_max_bytes{_region="mars",_team="discovery",_cluster=~".*"}) * 100


sum by (_federation, _region, _team, _environment, _cluster) (elasticsearch_jvm_memory_used_bytes{_region=~"$region", _team=~"$team", _cluster=~".*"}) / sum (elasticsearch_jvm_memory_max_bytes{_region=~"$region", _team=~"$team", _cluster=~".*"}) * 100 < 50