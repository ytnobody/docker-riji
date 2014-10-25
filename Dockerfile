FROM ytnobody/ubuntu-jp:latest
MAINTAINER ytnobody <ytnobody@gmail.com>

RUN cpanm --notest Riji
RUN cpanm --notest Plack::Handler::Starman

EXPOSE 80
ENTRYPOINT \
    if [ ! -d "./blog" ] ; then \
        git clone $BLOG_REPO_URL ./blog ; \
    fi && \
    cd ./blog && \
    git pull && \
    riji-server -s Starman -p 80
