gosu postgres postgres --single -E <<-EOSQL
	CREATE EXTENSION hstore;
EOSQL