FROM centos:7

RUN yum install -y python2 \
  && mkdir /app

COPY test.html /app

CMD cd /app && python -m SimpleHTTPServer $PORT

