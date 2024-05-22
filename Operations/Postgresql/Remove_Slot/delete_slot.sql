select pg_drop_replication_slot(slot_name) from pg_replication_slots where slot_name = 'commission_invoice_biq_query_slot';

-- /etc/patroni.yml altında slots: sectiondan silinmeli, yoksa bu sorguyla remove edilebilir.