FROM python:3.6.10-stretch

RUN pip3 install "setuptools<58.0.0"
RUN mkdir -p /opt/python
COPY ./requirements.txt /opt/
RUN pip3 install --target /opt/python -r /opt/requirements.txt

RUN apt-get update && apt-get install -y zip
RUN cd /opt \
    && zip -ry layer.zip * .[^.]*

CMD ["bash"]