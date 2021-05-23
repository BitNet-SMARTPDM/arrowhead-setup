FROM openjdk:11-jre-slim

ARG core_system

COPY jars/*$core_system*.jar ./
COPY scripts/run.sh run.sh

CMD ["./run.sh"]