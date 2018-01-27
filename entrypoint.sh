#!/usr/bin/env bash

sed -e 's/BROKER_PORT/'"$BROKER_PORT"'/' -e 's/ZK_URL/'"$ZK_URL"'/' -e 's/NUM_PARTITIONS/'"$NUM_PARTITIONS"'/' \
-e 's/BROKER_ID/'"$BROKER_ID"'/' -e 's/ADV_HOST/'"$ADV_HOST"'/' -e 's/LOG_RETENTION_HOURS/'"$LOG_RETENTION_HOURS"'/' \
-e 's/LOG_SEGMENT_BYTES/'"$LOG_SEGMENT_BYTES"'/' -e 's/LOG_RETENTION_CHECK_INTERVAL_MS/'"$LOG_RETENTION_CHECK_INTERVAL_MS"'/' \
-e 's/GROUP_INITIAL_REBALANCE_DELAY_MS/'"$GROUP_INITIAL_REBALANCE_DELAY_MS"'/' -i /kafka/config/server.properties


exec kafka/bin/kafka-server-start.sh kafka/config/server.properties