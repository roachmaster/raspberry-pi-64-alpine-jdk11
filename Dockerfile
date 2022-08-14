FROM alpine:3.14

RUN  apk update \
  && apk upgrade \
  && apk add --update openjdk11 tzdata curl unzip bash \
  && rm -rf /var/cache/apk/* \
  && wget https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz \
  && tar -xvf apache-maven-3.8.6-bin.tar.gz -C /opt/ \
  && rm /apache-maven-3.8.6-bin.tar.gz   \
  && export PATH=/opt/apache-maven-3.8.6/bin:$PATH