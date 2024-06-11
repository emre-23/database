create user "altug.bayram" login;
grant CONNECT ON DATABASE fleet_management TO "altug.bayram";
\c fleet_management
grant SELECT ON ALL tables in schema public TO "altug.bayram";


-- kontrol
\c database yetki_istenen_user
select * from yetki_istenen_tablo limit x;


--
grant SELECT on ALL tables in schema public TO "orange_delivery_archive_dwh";
create user "merve.ariyurek" login;
grant orange_delivery_archive_dwh to "merve.ariyurek";

-- schema kullanılıyorsa
\dnS
set search_path ='schema_name ';
grant SELECT on ALL tables in schema gib_receiver TO "baler.ilhan";
\c gib_receiver "baler.ilhan"
select * from gib_receiver.producer_message limit 1;


--- yeni app kullanıcı için
grant all on SCHEMA public to "suggestion_airflow_prod_appuser";
grant all on ALL tables in schema public TO "suggestion_airflow_prod_appuser";



-- Tablo ownerlık değiştirme
ALTER TABLE company_user_role OWNER TO invoice_integrator_owner;
-- Komut çıktısından alma
select 'ALTER TABLE '''|| tablename ||''' OWNER TO;' as query from pg_tables where schemaname='public';


