FROM buildpack-deps:buster

RUN apt-get update && apt-get install -y zip

RUN mkdir -p /tmp/layer && cd /tmp/ && \
    curl https://get.pulumi.com/releases/sdk/pulumi-v3.40.0-linux-x64.tar.gz -o /tmp/pulumi-v3.40.0-linux-x64.tar.gz && \
    tar xf pulumi-v3.40.0-linux-x64.tar.gz && \
    mkdir -p /opt/bin && \
    mv pulumi/* /opt/bin/ && \
    rm /tmp/pulumi-v3.40.0-linux-x64.tar.gz

RUN cd /opt \
    && zip -ry layer.zip * .[^.]*

CMD ["bash"]