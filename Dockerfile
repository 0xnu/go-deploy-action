FROM golang:1.15

LABEL "name"="GO Deploy Action"
LABEL "maintainer"="Finbarrs Oketunji <oketunjifinbarrs@hotmail.com>"
LABEL "version"="0.3.0"

LABEL "com.github.actions.name"="GO Deploy Action"
LABEL "com.github.actions.description"="Go project binaries for multiple platforms with GitHub Action."
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="#E0EBF5"

RUN \
  apt-get update && \
  apt-get install -y ca-certificates openssl zip && \
  update-ca-certificates && \
  rm -rf /var/lib/apt

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]