FROM ytnobody/ubuntu-jp:latest
MAINTAINER ytnobody <ytnobody@gmail.com>

RUN cpanm --notest Riji
RUN cpanm --notest Plack::Handler::Starman
ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

EXPOSE 80
ENTRYPOINT /usr/local/bin/run 
