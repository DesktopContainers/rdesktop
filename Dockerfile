FROM desktopcontainers/base-debian

MAINTAINER MarvAmBass (https://github.com/DesktopContainers)

RUN apt-get -q -y update && \
    apt-get -q -y install rdesktop && \
    apt-get -q -y clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*;
    
RUN mkdir /home/app/.vnc && \
    chown app.app -R /home/app/.vnc; \
    echo 'rdesktop -x m -f -P -D $RDESKTOP_OPTS $RDESKTOP_SERVER 2>&1 | logger' >> /usr/local/bin/bin/ssh-app.sh;
