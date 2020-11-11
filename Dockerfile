FROM desktopcontainers/base-alpine

RUN apk add --no-cache rdesktop \
 \
 && echo 'rdesktop -x m -f -P -D $RDESKTOP_OPTS $RDESKTOP_SERVER' >> /container/scripts/app
