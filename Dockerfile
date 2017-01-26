FROM mhart/alpine-node:7.0.0

MAINTAINER bwnyasse <risbonyasse@gmail.com>
RUN apk add --update bash && rm -rf /var/cache/apk/*

# Install JS_FACADE_GEN https://github.com/dart-lang/js_facade_gen
RUN npm install -g dart_js_facade_gen

COPY DefinitelyTyped /usr/share/DefinitelyTyped
COPY motd /etc/motd

RUN mkdir /usr/share/DefinitelyTyped/lib2dart

RUN sed -i 's/\r$//' /etc/motd && chmod +x /etc/motd \
    && echo '[ ! -z "$TERM" -a -r /etc/motd ] && cat /etc/motd' >> /root/.bashrc

VOLUME /usr/share/DefinitelyTyped/lib2dart

WORKDIR /usr/share/DefinitelyTyped/
