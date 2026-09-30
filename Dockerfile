FROM accetto/ubuntu-vnc-xfce-brave-g3:latest
USER root
ENV VNC_PW=0x154A6A \
    NOVNC_PORT=3000 \
    NOVNC_HEARTBEAT=30 \
    HOME=/data \
    VNC_CONFIG_HOME=/data/.vnc
EXPOSE 3000
RUN mkdir -p /data/.vnc /tmp && chmod 777 /data /data/.vnc && \
    rm -f /dockerstartup/vnc.log /dockerstartup/novnc.log && \
    ln -s /tmp/vnc.log /dockerstartup/vnc.log && \
    ln -s /tmp/novnc.log /dockerstartup/novnc.log
CMD ["--verbose", "--tail-vnc"]
