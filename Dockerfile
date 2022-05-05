FROM centos:7

RUN yum install -y python2 python3 \
  && mkdir /app

COPY test.html /app
COPY echo.py /app

# CMD cd /app && echo "$SOME_VAR" > test2.html && echo "$PORT" > port.txt && python -m SimpleHTTPServer $PORT
CMD cd /app && python3 echo.py -b 0.0.0.0 -p $PORT
