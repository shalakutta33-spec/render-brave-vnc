FROM accetto/ubuntu-vnc-xfce-brave-g3:latest
USER root
ENV VNC_PW=headless
ENV NOVNC_PORT=10000
ENV NOVNC_HEARTBEAT=30
EXPOSE 10000
