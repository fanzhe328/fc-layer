FROM aliyunfc/runtime-java8:latest as build

RUN cd /tmp/ && \
    curl https://download.redis.io/releases/redis-6.0.9.tar.gz -o /tmp/redis.tar.gz && \
    tar xf redis.tar.gz && \
    cd redis-6.0.9 && \
    make
RUN mkdir /opt/bin && cp /tmp/redis-6.0.9/src/redis-cli /opt/bin

FROM aliyunfc/alpine-zip:latest as prod

COPY --from=build /opt /opt
RUN cd /opt \
    && zip -ry layer.zip * .[^.]*

CMD ["bash"]