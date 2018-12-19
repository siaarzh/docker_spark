#!/bin/sh
# Set spark version here
SPARK_VERSION=2.4.0

# Test script
docker stack deploy -c examples/docker-compose.yml test

echo "waiting for cluster start..." && sleep 10

docker run -it --rm --name spark_test \
    --network test_backend \
    siaarzh/docker_spark:${SPARK_VERSION}-alpine \
    spark-submit --class org.apache.spark.examples.SparkPi --master spark://sparkmaster:7077 examples/jars/spark-examples_2.11-${SPARK_VERSION}.jar 10

docker stack rm test