FROM centos:7

RUN yum install -y python2 \
  && mkdir /app

COPY test.html /app

CMD cd /app && echo "$SOME_VAR" > test2.html && echo "$PORT" > port.txt && python -m SimpleHTTPServer $PORT

