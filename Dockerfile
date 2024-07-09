FROM ubuntu:latest

RUN apt-get update -q && apt-get install -y git curl

WORKDIR /Work

USER root
ENV HOME="/root"
ENV ASDF_DIR="${HOME}/.asdf"
RUN git clone --depth 1 https://github.com/asdf-vm/asdf.git $HOME/.asdf && \
    echo '. $HOME/.asdf/asdf.sh' >> $HOME/.bashrc && \
    echo '. $HOME/.asdf/asdf.sh' >> $HOME/.profile
