FROM accetto/ubuntu-vnc-xfce-brave-g3:latest

USER root

ENV NOVNC_PORT=10000

EXPOSE 10000
