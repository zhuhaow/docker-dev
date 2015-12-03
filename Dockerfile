FROM ubuntu:14.04
MAINTAINER Zhuhaow Wang <zhuhaow@gmail.com>

ENV HOME /root

# only run this in China, comment out the following line otherwise
# RUN sed -i 's/http:\/\/archive\.ubuntu\.com\/ubuntu\//http:\/\/mirrors\.163\.com\/ubuntu\//g' /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    zsh \
    curl \
    wget \
    && apt-get clean

# setting up zsh
RUN git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
    && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc \
    && chsh -s /bin/zsh

WORKDIR /root
CMD ["zsh"]
