#!/bin/bash
oc new-app eap71-amq-s2i \
 -p APPLICATION_NAME=broker1 \
 -e MQ_SERVICE_PREFIX_MAPPING="broker1-amq=BROKER1_MQ" \
 -e BROKER1_AMQ_TCP_SERVICE_HOST=broker1-amq-tcp \
 -e BROKER1_AMQ_TCP_SERVICE_PORT=61616 \
 -e BROKER1_MQ_USERNAME=mqUser \
 -e BROKER1_MQ_PASSWORD=mqPassword \
 -e BROKER1_MQ_QUEUES=HELLOWORLDMDBQueue \
 -e BROKER1_MQ_TOPICS=HELLOWORLDMDBTopic \
 -e BROKER1_MQ_JNDI=java:/ConnectionFactory

