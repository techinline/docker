FROM	phusion/baseimage


RUN 	apt-get update
RUN		apt-get install -y s3cmd backupninja duplicity
ENV		region="EU"

COPY 	./backupninja.conf /etc/

ENTRYPOINT /bin/bash		
