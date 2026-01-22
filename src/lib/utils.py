def table_exists(spark, catalog, database, table):
  count = (spark.sql(f"SHOW TABLES FROM {catalog}.{database}")
           .filter(f"database = '{database}' AND tableName = '{table}' ")
           .count())
  
  return count == 1

  

def import_query(path):
  with open(path, 'r') as open_file:
      return open_file.read()
  