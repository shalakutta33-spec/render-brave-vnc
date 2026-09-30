FROM accetto/ubuntu-vnc-xfce-brave-g3:latest

USER root

EXPOSE 6901

CMD ["/dockerstartup/vnc_startup.sh"]
