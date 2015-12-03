FROM zhuhaow/devrbenv:latest
MAINTAINER Zhuhao Wang <zhuhaow@gmail.com>

RUN rbenv install 2.2.3 -v

RUN rbenv global 2.2.3
RUN echo 'gem: --no-rdoc --no-ri' >> /root/.gemrc

# comment out the following line if you are not in China.
# RUN eval "$(rbenv init -)" && gem sources --add https://ruby.taobao.org/ --remove https://rubygems.org/

RUN eval "$(rbenv init -)" && gem install bundler
