FROM centos:7

RUN yum install -y nginx python2 python3 \
  && mkdir /app

COPY app /app

ENTRYPOINT ["/usr/bin/tini", "-s", "--"]

WORKDIR /app

# CMD cd /app && echo "$SOME_VAR" > test2.html && echo "$PORT" > port.txt && python -m SimpleHTTPServer $PORT
# CMD cd /app && python3 echo.py -b 0.0.0.0 -p $PORT
CMD cd /app && sh start.sh
