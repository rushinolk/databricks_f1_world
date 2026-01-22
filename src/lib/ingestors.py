class Ingestor:

    def __init__(self, spark,catalog, schemaname, tablename, data_format):
        self.spark = spark
        self.catalog = catalog
        self.schemaname = schemaname
        self.tablename = tablename
        self.data_format = data_format
        self.set_schema()


    def set_schema(self):
        self.data_schema = dbutils.import_schema(self.tablename)


    def load(self,path):
        df = (self.spark.read
            .format(self.data_format)
            .schema(self.data_schema)
            .options(header="true")
            .option("nullValue", "\\N")
            .load(path))
        return df
        
    def save_batch(self,df):
        (df.coalesce(1)
            .write
            .format("delta")
            .mode("overwrite")
            .saveAsTable(f"{self.catalog}.{self.schemanema}.{self.tablename}"))
        














        