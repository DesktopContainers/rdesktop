FROM desktopcontainers/base-mate

MAINTAINER MarvAmBass (https://github.com/DesktopContainers)

RUN apt-get -q -y update && \
    apt-get -q -y install rdesktop && \
    apt-get -q -y clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*;
    
RUN mkdir /home/app/.vnc && \
    touch /home/app/.vnc/rdesktop.log; \
    chown app.app -R /home/app/.vnc; \
    echo '#!/bin/bash\nrdesktop -x m -g "$VNC_SCREEN_RESOLUTION" -P -D $RDESKTOP_OPTS $RDESKTOP_SERVER &>> /home/app/.vnc/rdesktop.log\n' > /bin/ssh-app.sh;
