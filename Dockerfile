FROM mhart/alpine-node:7.0.0

# Install JS_FACADE_GEN https://github.com/dart-lang/js_facade_gen
RUN npm install -g dart_js_facade_gen

COPY DefinitelyTyped /usr/share/DefinitelyTyped

RUN mkdir /usr/share/DefinitelyTyped/lib2dart

VOLUME /usr/share/DefinitelyTyped/lib2dart
