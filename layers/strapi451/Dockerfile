FROM aliyunfc/runtime-nodejs14:build-latest

ENV PATH /var/fc/lang/nodejs16/bin:/opt/bin:$PATH
ENV LD_LIBRARY_PATH /opt/lib:/opt/lib/x86_64-linux-gnu
ENV NODE_PATH /opt/nodejs/node_modules

WORKDIR /opt

RUN mkdir -p /opt/nodejs
COPY ./package.json /opt/nodejs/
RUN cd /opt/nodejs && npm --registry https://registry.npm.taobao.org i

# RUN cd /opt \
#     && zip -ry layer.zip * .[^.]*

CMD ["bash"]