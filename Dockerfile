FROM ubuntu:22.04

RUN apt update
RUN apt install -yy gcc g++ cmake

COPY . print/
WORKDIR print


RUN cmake -H. -B_build -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=_install
RUN cmake --build _build
RUN cmake --build _build --target install
RUN mkdir -p /home/logs
ENV LOG_PATH /home/logs/log.txt

VOLUME /lab08/logs


WORKDIR _install/bin


ENTRYPOINT ./Hello_world && ./Hello_world >> /lab08/logs/log.txt 2>&1
