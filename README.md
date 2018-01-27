[**Broker Kafka 1.0.0**](https://hub.docker.com/r/igrytsyk/broker-kafka_1.0.0/)


How to use:

```
        docker run --rm \
            --name kafka-broker \
            -e ZK_URL=zookeeper_ip:2181 \
            -e JAVA_OPTS="-Xms15G -Xmx30G" \
            -e BROKER_ID=1 \
            -e BROKER_PORT=9092 \
            -e ADV_HOST=broker_ip \
            -e NUM_PARTITIONS=4 \
            -p 9092:9092 \
            -v /work:/topic-data \
            igrytsyk/broker-kafka_1.0.0
```

Or use [docker-compose](https://github.com/hritsyk/kafka-cluster-docker-compose/blob/master/docker-compose.yml) for local development,
and run like
```
docker-compose up
```


