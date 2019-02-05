FROM golang:1.11

LABEL "name"="Go Builder"
LABEL "maintainer"="Dan Sosedoff <dan.sosedoff@gmail.com>"
LABEL "version"="0.1.0"

LABEL "com.github.actions.name"="Go Builder"
LABEL "com.github.actions.description"="Cross-complile Go programs"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="#E0EBF5"

RUN \
  apt-get update && \
  apt-get install -y ca-certificates openssl curl zip jq && \
  update-ca-certificates && \
  rm -rf /var/lib/apt

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]