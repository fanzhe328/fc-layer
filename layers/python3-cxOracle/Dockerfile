FROM aliyunfc/runtime-python3.9:build-latest

RUN mkdir -p /opt/python
COPY ./requirements.txt /opt/
RUN pip3 install --target /opt/python -r /opt/requirements.txt

RUN mkdir -p /opt/oracle \
    && cd /opt/oracle \
    && wget -O instantclient-basiclite-linux.x64-21.8.0.0.0dbru.zip  https://download.oracle.com/otn_software/linux/instantclient/218000/instantclient-basiclite-linux.x64-21.8.0.0.0dbru.zip \
    && unzip instantclient-basiclite-linux.x64-21.8.0.0.0dbru.zip \
    && mkdir -p /opt/lib \
    && mv /opt/oracle/instantclient_21_8/* /opt/lib \
    && cd /opt && rm -rf /opt/oracle

RUN apt-get update && apt-get install -y libaio1 \
    && mv /lib/x86_64-linux-gnu/libaio.so.1* /opt/lib

RUN cd /opt \
    && zip -ry layer.zip * .[^.]*

CMD ["bash"]