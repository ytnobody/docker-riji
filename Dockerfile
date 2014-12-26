FROM ytnobody/debian-plack
MAINTAINER ytnobody <ytnobody@gmail.com>

RUN cpanm --auto-cleanup=0 --notest Riji Plack::Handler::Starman
ADD run /usr/bin/blog
RUN chmod +x /usr/bin/blog
RUN apt-get install git -y && apt-get clean

EXPOSE 80
ENTRYPOINT /usr/bin/run /usr/bin/blog
