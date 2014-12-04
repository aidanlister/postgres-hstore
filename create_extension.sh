gosu postgres postgres --single template1 -E <<-EOSQL
	CREATE EXTENSION hstore;
EOSQL
