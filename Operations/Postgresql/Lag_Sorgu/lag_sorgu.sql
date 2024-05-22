SELECT pid,redo_lsn,sent_lsn,
round((redo_lsn-sent_lsn) / 1024 / 1024 / 1024, 2) AS GB_behind, pg_replication_slots.slot_name
FROM pg_control_checkpoint(),pg_stat_replication
LEFT JOIN
pg_replication_slots ON pg_stat_replication.pid = pg_replication_slots.active_pid;




SELECT
  slot_name,
  pg_size_pretty(
    pg_wal_lsn_diff(
      pg_current_wal_lsn(), restart_lsn)) AS retained_wal,
  active,
  restart_lsn FROM pg_replication_slots;