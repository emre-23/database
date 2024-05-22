\c widget_placement -- connecto to database
\x -- show expanded output 

-- get stats
select * from pg_stat_all_tables WHERE schemaname='public' order by n_dead_tup desc;

-- vacuum
VACUUM(ANALYZE,VERBOSE);


-- auto vacuum
ALTER TABLE tab_name SET(autovacuum_enabled = false);