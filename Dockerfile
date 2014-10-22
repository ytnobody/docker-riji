FROM kazeburo/perl:v5.18
MAINTAINER ytnobody <ytnobody@gmail.com>

RUN cpanm --notest Riji

EXPOSE 3650
ENTRYPOINT if [ ! -d "./blog" ] ; then git clone $BLOG_REPO_URL ./blog ; fi && cd ./blog && git pull && riji-server 
