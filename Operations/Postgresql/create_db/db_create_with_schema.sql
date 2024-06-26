CREATE ROLE etransformation_backoffice;
ALTER ROLE etransformation_backoffice WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE etransformation_backoffice_app;
ALTER ROLE etransformation_backoffice_app WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE etransformation_backoffice_appuser;
ALTER ROLE etransformation_backoffice_appuser WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE etransformation_backoffice_developer;
ALTER ROLE etransformation_backoffice_developer WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE etransformation_backoffice_owner;
ALTER ROLE etransformation_backoffice_owner WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE etransformation_backoffice_readonly;
ALTER ROLE etransformation_backoffice_readonly WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE DATABASE etransformation_backoffice WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'tr_TR.UTF-8' LC_CTYPE = 'tr_TR.UTF-8';
ALTER DATABASE etransformation_backoffice OWNER TO etransformation_backoffice_owner;
\c etransformation_backoffice etransformation_backoffice_owner ;
CREATE SCHEMA etransformation_backoffice;
ALTER SCHEMA etransformation_backoffice OWNER TO etransformation_backoffice_owner;
ALTER ROLE etransformation_backoffice_appuser SET search_path TO 'etransformation_backoffice', 'public';
ALTER ROLE etransformation_backoffice_owner SET search_path TO 'etransformation_backoffice', 'public';
GRANT CONNECT,TEMPORARY ON DATABASE etransformation_backoffice TO etransformation_backoffice;
GRANT etransformation_backoffice TO etransformation_backoffice_app GRANTED BY postgres;
GRANT etransformation_backoffice TO etransformation_backoffice_developer GRANTED BY postgres;
GRANT etransformation_backoffice TO etransformation_backoffice_owner GRANTED BY postgres;
GRANT etransformation_backoffice TO etransformation_backoffice_readonly GRANTED BY postgres;
GRANT etransformation_backoffice_app TO etransformation_backoffice_appuser GRANTED BY postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE etransformation_backoffice_owner GRANT SELECT,UPDATE ON SEQUENCES TO etransformation_backoffice_app;
ALTER DEFAULT PRIVILEGES FOR ROLE etransformation_backoffice_owner GRANT SELECT,UPDATE ON SEQUENCES TO etransformation_backoffice_developer;
ALTER DEFAULT PRIVILEGES FOR ROLE etransformation_backoffice_owner GRANT SELECT ON SEQUENCES TO etransformation_backoffice_readonly;
ALTER DEFAULT PRIVILEGES FOR ROLE etransformation_backoffice_owner GRANT ALL ON TYPES TO etransformation_backoffice_app;
ALTER DEFAULT PRIVILEGES FOR ROLE etransformation_backoffice_owner GRANT ALL ON TYPES TO etransformation_backoffice_developer;
ALTER DEFAULT PRIVILEGES FOR ROLE etransformation_backoffice_owner GRANT ALL ON TYPES TO etransformation_backoffice_readonly;
ALTER DEFAULT PRIVILEGES FOR ROLE etransformation_backoffice_owner GRANT ALL ON FUNCTIONS TO etransformation_backoffice_app;
ALTER DEFAULT PRIVILEGES FOR ROLE etransformation_backoffice_owner GRANT ALL ON FUNCTIONS TO etransformation_backoffice_developer;
ALTER DEFAULT PRIVILEGES FOR ROLE etransformation_backoffice_owner GRANT USAGE ON SCHEMAS TO etransformation_backoffice_app;
ALTER DEFAULT PRIVILEGES FOR ROLE etransformation_backoffice_owner GRANT USAGE ON SCHEMAS TO etransformation_backoffice_developer;
ALTER DEFAULT PRIVILEGES FOR ROLE etransformation_backoffice_owner GRANT USAGE ON SCHEMAS TO etransformation_backoffice_readonly;
ALTER DEFAULT PRIVILEGES FOR ROLE etransformation_backoffice_owner GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES TO etransformation_backoffice_app;
ALTER DEFAULT PRIVILEGES FOR ROLE etransformation_backoffice_owner GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES TO etransformation_backoffice_developer;
ALTER DEFAULT PRIVILEGES FOR ROLE etransformation_backoffice_owner GRANT SELECT ON TABLES TO etransformation_backoffice_readonly;
ALTER DEFAULT PRIVILEGES FOR ROLE etransformation_backoffice_appuser IN SCHEMA etransformation_backoffice REVOKE ALL ON TABLES FROM etransformation_backoffice_appuser;
ALTER DEFAULT PRIVILEGES FOR ROLE etransformation_backoffice_owner IN SCHEMA etransformation_backoffice GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES TO etransformation_backoffice_appuser;
GRANT ALL ON SCHEMA public TO etransformation_backoffice_owner;
GRANT USAGE ON SCHEMA public TO etransformation_backoffice;
GRANT USAGE ON SCHEMA etransformation_backoffice TO etransformation_backoffice_app;
GRANT USAGE ON SCHEMA etransformation_backoffice TO etransformation_backoffice_developer;
GRANT USAGE ON SCHEMA etransformation_backoffice TO etransformation_backoffice_readonly;
alter database etransformation_backoffice set search_path = etransformation_backoffice,public,"$user";