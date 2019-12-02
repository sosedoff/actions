FROM ruby:2.5

ENV BUNDLE_PATH .bundle
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL=C.UTF-8

RUN apt-get update -y && \
    apt-get install -y curl rsync openssh-client

ADD build.sh /build.sh
ADD publish.sh /publish.sh
ADD notify.sh /notify.sh