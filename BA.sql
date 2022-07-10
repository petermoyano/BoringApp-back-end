\echo 'Delete and recreate BA db?'
\prompt 'Return for yes or control-C to cancel > ' foo

DROP DATABASE BA;
CREATE DATABASE BA;
\connect BA

\i BA-schema.sql
\i BA-seed.sql

\echo 'Delete and recreate BA_test db?'
\prompt 'Return for yes or control-C to cancel > ' foo

DROP DATABASE BA_test;
CREATE DATABASE BA_test;
\connect BA_test

\i BA-schema.sql
