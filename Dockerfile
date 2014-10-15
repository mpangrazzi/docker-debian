
#
# Debian
#

FROM debian:wheezy

# ENV variables

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

# Install basic packages

RUN \
  apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y apt-utils && \
  apt-get install -y build-essential && \
  apt-get install -y curl git htop man unzip vim wget nano

# Add bash enhancements

ADD root/.bashrc /root/.bashrc
ADD root/.gitconfig /root/.gitconfig
ADD root/.scripts /root/.scripts

# Fix locales to en_US.UTF-8

RUN apt-get install -y locales
RUN localedef -i en_US -f UTF-8 en_US.UTF-8

# Working directory

WORKDIR /root

# Default command

CMD ["bash"]
