FROM --platform=linux/amd64 ubuntu:22.04

#https://wiki.ubuntu.com/Releases

ENV DEBIAN_FRONTEND noninteractive

RUN apt update --fix-missing
RUN apt install -y git gdb git wget patchelf file strace tmux python3 nasm binwalk bsdmainutils
RUN apt install -y netcat python3-pip ruby-full valgrind vim xclip elfutils
RUN apt install -y checksec

WORKDIR /opt
RUN git clone https://github.com/pwndbg/pwndbg
WORKDIR /opt/pwndbg
ENV LC_ALL=C.UTF-8
RUN ./setup.sh

WORKDIR /opt
RUN wget https://github.com/io12/pwninit/releases/download/3.3.0/pwninit
RUN chmod +x pwninit

RUN gem install one_gadget
RUN pip3 install IPython icecream angr pwntools

WORKDIR /home/localdir
CMD bash
