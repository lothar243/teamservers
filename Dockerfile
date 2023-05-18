FROM ubuntu:latest

RUN apt update && apt install -y \
  cron \
  iproute2 \
  openssh-server \
  python3 \
  sudo \
  vim
#  && \
#  sudo rm -rf /var/lib/apt/lists/*

RUN echo "@reboot sh /config/provision.sh" | crontab -

COPY onstart.sh /usr/sbin

EXPOSE 22

RUN rm /etc/update-motd.d/60-unminimize

CMD ["sh","/usr/sbin/onstart.sh"]
