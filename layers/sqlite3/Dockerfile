# equal to reg.docker.alibaba-inc.com/serverless/debian:stretch-nodejs16-alinode.16.15-v0.1
FROM registry.cn-shenzhen.aliyuncs.com/fc-demo2/fc-layer-runtime:stretch-nodejs16-alinode.16.15-v0.1

# env for custom-runtime(nodejs16)
#ENV PATH /opt/nodejs16/bin:/opt/bin:$PATH
ENV PATH /var/fc/lang/nodejs16/bin:/opt/bin:$PATH
ENV LD_LIBRARY_PATH /opt/lib:/opt/lib/x86_64-linux-gnu
ENV NODE_PATH /opt/nodejs/node_modules

WORKDIR /tmp

RUN mkdir -p /tmp/install

RUN apt-get update
RUN apt-get install -y -d -o=dir::cache=/tmp/install \
    sqlite3 \
    --reinstall --no-install-recommends

RUN for f in $(ls /tmp/install/archives/*.deb); do \
        echo "Preparing to unpack ${f##*/}"; \
        cd /tmp/install/archives; \
        dpkg-deb -x ${f##*/} /tmp/install; \
    done;

RUN cp -r /tmp/install/usr/bin /opt/

CMD ["bash"]