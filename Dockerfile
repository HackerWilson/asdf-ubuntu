FROM ubuntu:latest

LABEL maintainer="Victor Borja <vborja@apache.org>"
LABEL updated_at=2017-08-23

RUN apt-get update -q && apt-get install -y git curl

USER root
ENV HOME="/root"
ENV ASDF_DIR="${HOME}/.asdf"
RUN git clone --depth 1 https://github.com/asdf-vm/asdf.git $HOME/.asdf && \
    echo '. $HOME/.asdf/asdf.sh' >> $HOME/.bashrc && \
    echo '. $HOME/.asdf/asdf.sh' >> $HOME/.profile
