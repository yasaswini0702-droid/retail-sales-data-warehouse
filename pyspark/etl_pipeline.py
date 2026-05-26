from pyspark.sql import SparkSession
from pyspark.sql.functions import col

spark = SparkSession.builder \
    .appName("RetailSalesETL") \
    .getOrCreate()

df = spark.read.csv(
    "sales_data.csv",
    header=True,
    inferSchema=True
)

cleaned_df = df.filter(col("sales_amount") > 0)

region_sales = cleaned_df.groupBy("region").sum("sales_amount")

region_sales.show()
