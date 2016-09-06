FROM couchbase:community-4.0.0

MAINTAINER Pradeep Macharla <pradeep@seleniumframework.com>

# None of the below commands will get executed at build time, because ENTRYPOINT that starts couch server runs only when container is started, so expecting the server to be up on :8091 is false. TODO 

RUN apt-get update && apt-get install -y wget

RUN /opt/couchbase/bin/couchbase-cli cluster-init -c 127.0.0.1:8091 -u Administrator -p Administrator --cluster-username=Administrator --cluster-password=Administrator --services=data,index,query --cluster-ramsize=4785 --cluster-index-ramsize=256

RUN couchbase-cli bucket-create -c 127.0.0.1:8091 -u Administrator -p Administrator --bucket=default --bucket-ramsize=4685 --bucket-replica=1 --wait

ADD sample.ddoc .

RUN curl -X PUT -H 'Content-Type: application/json' 'http://Administrator:Administrator@localhost:8092/default/_design/_beer' -d @sample.ddoc

