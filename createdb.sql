\set quoted_passwd '\'' :passwd '\''
CREATE ROLE :user WITH LOGIN PASSWORD :quoted_passwd;
CREATE DATABASE :dbname OWNER :user;
--GRANT ALL PRIVILEGES ON :dbname TO :user;