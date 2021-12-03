docker build -t cassandra:testpw ./
docker run -p 9042:9042 -p 7000:7000 -e CASSANDRA_PASSWORD=testpw cassandra:testpw
