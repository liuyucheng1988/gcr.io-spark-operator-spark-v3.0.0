FROM gcr.io/spark-operator/spark:v3.1.1
RUN yum -y install gcc zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel
WORKDIR /home/spark
COPY ./Python-3.6.1 /home/spark
RUN cd /home/spark/Python-3.6.1 &&  /home/spark/Python-3.6.1/configure --prefix=/usr/local/python3.6 --with-ssl && make &&  make install && ln -s /usr/local/python3.6/bin/python3.6 /usr/local/bin