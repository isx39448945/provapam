# hostpam
FROM fedora:27
LABEL version="1.0"
LABEL author="@isx39448945 ASIX-M06"
LABEL subject="hostpam"
RUN dnf -y install vim procps util-linux-user finger passwd python 
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh
WORKDIR /opt/docker
