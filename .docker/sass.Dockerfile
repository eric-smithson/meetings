## Phusion's Baseimage is based on Ubuntu 16.04 LTS
## It's also built here:
FROM phusion/baseimage:0.9.22

## Configure SASS, 'cause CSS is a shit-show
RUN apt-get update \
    && apt-get install -y \
      build-essential \
      iputils-ping    \
      ruby-full       \
      rubygems        \
    && gem install sass --no-user-install

## Big brother, but for SASS
CMD ["sass", "--watch", "/root/.jupyter/custom/sass/:/root/.jupyter/custom/"]