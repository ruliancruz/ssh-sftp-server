FROM ubuntu:24.04 AS server
RUN apt-get update && \
  apt-get install -y --no-install-recommends openssh-server && \
  mkdir /var/run/sshd/ && \
  rm -rf /var/lib/apt/lists/*
RUN useradd -m -s /bin/bash user && \
  echo 'user:password' | chpasswd && \
  echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
