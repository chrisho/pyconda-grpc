FROM debian:jessie

RUN apt-get update --fix-missing && apt-get install -y wget bzip2 ca-certificates \
    libglib2.0-0 libxext6 libsm6 libxrender1 \
    git mercurial subversion
    
RUN echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh && \
    wget --quiet https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh -O ~/anaconda.sh && \
    /bin/bash ~/anaconda.sh -b -p /opt/conda && \
    rm ~/anaconda.sh
 
RUN apt-get install -y python-pip

RUN pip install pymysql

RUN pip install sqlalchemy 

RUN pip install python-dotenv

RUN pip install grpcio

RUN pip install grpcio-tools

RUN pip install kazoo

RUN pip install pypandoc

RUN pip install aliyun-log-python-sdk
