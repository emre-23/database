SELECT redo_lsn, slot_name,restart_lsn,
    round((redo_lsn-restart_lsn) / 1024 / 1024 / 1024, 2) AS GB_behind
    FROM pg_control_checkpoint(), pg_replication_slots where slot_name='impression_dwh_slot_2';