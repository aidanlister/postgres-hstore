# Because both template1 and the user postgres database have already been created,
# we need to create the hstore extension in template1 and then recreate the postgres database.
#
# Running CREATE EXTENSION in both template1 and postgres can lead to
# the extensions having different eid's.
gosu postgres psql --dbname template1 <<EOSQL
    CREATE EXTENSION hstore;
    DROP DATABASE postgres;
    CREATE DATABASE postgres TEMPLATE template1;
EOSQL

