FROM msarahan/concourse-anaconda_org-resource

RUN apt-get update -y
RUN apt-get install pandoc vim -y

RUN conda install pymysql

RUN conda install sqlalchemy 

RUN pip install python-dotenv

RUN pip install grpcio

RUN pip install grpcio-tools

RUN pip install kazoo

RUN pip install pypandoc

RUN pip install aliyun-log-python-sdk
