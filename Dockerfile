FROM ubuntu

RUN apt-get update && apt-get install -y dante-server iproute2
COPY dante.sh /usr/local/bin/dante.sh
COPY danted.conf /etc/

EXPOSE 1080

CMD /usr/local/bin/dante.sh
