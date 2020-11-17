FROM desktopcontainers/base-alpine

RUN apk add --no-cache rdesktop \
 \
 && echo 'rdesktop -x m -f -P -D $RDESKTOP_OPTS $RDESKTOP_SERVER' >> /container/scripts/app \
 && sed -i 's/# INIT PHASE/# INIT PHASE\nenv | grep RDESKTOP_ >> \/etc\/environment\n/g' /container/scripts/entrypoint.sh
