FROM cassandra:latest

RUN apt-get update && apt-get install gettext-base
RUN rm -rf /var/lib/apt/lists/*;
COPY cassandra.yaml /etc/cassandra/cassandra.yaml
COPY changepw.template.cql /etc/cassandra/changepw.template.cql
RUN chmod 777 /etc/cassandra/changepw.template.cql
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
