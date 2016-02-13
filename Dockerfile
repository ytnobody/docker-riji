FROM ytnobody/base:wheezy
MAINTAINER ytnobody <ytnobody@gmail.com>

ADD run /usr/bin/blog
RUN chmod +x /usr/bin/blog

RUN cpanm --auto-cleanup=0 --notest Riji Plack::Handler::Starman

EXPOSE 80
ENTRYPOINT /usr/bin/blog
