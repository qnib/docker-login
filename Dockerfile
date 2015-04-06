FROM qnib/logstash:1.3
MAINTAINER "Christian Kniep <christian@qnib.org>"

RUN yum install -y which zeromq && \
    ln -s /usr/lib64/libzmq.so.1 /usr/lib64/libzmq.so

# logstash config
ADD etc/default/logstash/ /etc/default/logstash/
ADD etc/grok/patterns/ /etc/grok/patterns/
