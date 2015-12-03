FROM zhuhaow/devbase:latest
MAINTAINER Zhuhao Wang <zhuhaow@gmail.com>

RUN apt-get update && apt-get install -y zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev && apt-get clean

RUN git clone https://github.com/sstephenson/rbenv.git /root/.rbenv
RUN git clone https://github.com/sstephenson/ruby-build.git /root/.rbenv/plugins/ruby-build

# add rbenv plugin to .zshrc
RUN sed -i 's/)/ rbenv)/g' /root/.zshrc

ENV CONFIGURE_OPTS --disable-install-doc
ENV PATH /root/.rbenv/bin:$PATH
