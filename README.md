[![](https://images.microbadger.com/badges/image/siaarzh/docker_spark.svg)](https://microbadger.com/images/siaarzh/docker_spark "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/siaarzh/docker_spark:2.3.1-alpine_w_hadoop.svg)](https://microbadger.com/images/siaarzh/docker_spark:2.3.1-alpine_w_hadoop "Get your own version badge on microbadger.com")



# docker_spark

A Docker container for Apache Spark. Now lighter on alpine image!

## Testing

To test the image using a simple Pi Job (a compute-intensive job, where spark basically "throws darts" at a circle), run the following command:

```bash
$ bash ./tests/test_Pi.sh
```

This will use the `docker-compose.yml` file to launch a standalone local cluster with 1 master node and 2 worker nodes.