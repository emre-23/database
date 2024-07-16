-- /opt/couchbase/bin/cbepctl [host]:11210 -b [bucket-name] -u [administrator-name] -p [administrator-password] set flush_param exp_pager_stime [value]
--  Default 10 dakika. Saniye cinsinden kabul ediyor.

/opt/couchbase/bin/cbepctl 10.10.10.127:11210 -b partner-events -u Administrator -p KşTyr27+ set flush_param exp_pager_stime 300