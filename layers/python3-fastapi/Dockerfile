FROM aliyunfc/runtime-python3.9:build-latest

RUN mkdir -p /opt/python
COPY ./requirements.txt /opt/
RUN pip3 install --target /opt/python -r /opt/requirements.txt

RUN cd /opt \
    && zip -ry layer.zip * .[^.]*

CMD ["bash"]