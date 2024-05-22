create index CONCURRENTLY idx_scd_created_date  on supplier_counted_delivery (created_date);


CREATE INDEX CONCURRENTLY "ubl_download_history_uuid_index" ON "invoice_integrator"."ubl_download_history" ("uuid");
CREATE INDEX CONCURRENTLY "ubl_download_history_user_id_index" ON "invoice_integrator"."ubl_download_history" ("user_id");
CREATE INDEX CONCURRENTLY "ubl_download_history_status_index" ON "invoice_integrator"."ubl_download_history" ("status");
CREATE INDEX CONCURRENTLY "ubl_download_history_type_index" ON "invoice_integrator"."ubl_download_history" ("type");


CREATE INDEX CONCURRENTLY idx_kw_planner_path_language ON kw_planner_int_search_paths(path, language);