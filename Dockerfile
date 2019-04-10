# use official php image
FROM python:3.7-stretch

# add maintainer
LABEL maintainer="Othmar 52 <othmar52@github.com>"

# copy files
COPY ./docker-install.sh $HOME/bin/docker-install.sh

# install env
RUN docker-install.sh

# configure volumes
VOLUME /host

