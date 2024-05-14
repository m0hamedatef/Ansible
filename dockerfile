FROM ubuntu

RUN apt update && apt install ssh -y && apt install sudo -y 

RUN adduser ansible

RUN echo "ansible:123" | chpasswd

RUN usermod -aG sudo ansible

ENTRYPOINT  service ssh start && bash

# FROM ubuntu

# RUN apt update && apt install ssh -y && apt install sudo -y

# RUN adduser ansible

# RUN echo “ansible:123” | chpasswd

# RUN usermod -aG sudo ansible


# 172.17.0.2
