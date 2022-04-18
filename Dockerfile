FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y tzdata
RUN ln -fsn /usr/share/zoneinfo/Europe/Moscow /etc/localtime
RUN dpkg-reconfigure -f noninteractive tzdata
RUN apt-get install -y git python3 python3-pip wget unzip

RUN python3 -m pip install gdown cython wheel

WORKDIR /workdir

CMD ["/bin/bash", "./bootstrap.sh"]
