FROM alpine:3.9

LABEL MAINTAINER="XCNT GmbH <dev-infra@xcnt.io>"

RUN apk add --no-cache --update bash cloc libxslt

WORKDIR /data

ADD . /opt/cloc/
RUN chmod 770 /opt/cloc/cloc.sh

VOLUME [ "/data" ]
ENTRYPOINT [ "/opt/cloc/cloc.sh" ]
CMD ["/data"]
