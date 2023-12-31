FROM ubuntu

# Nimbix image-common desktop
RUN apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install curl && \
    curl -H 'Cache-Control: no-cache' \
        https://raw.githubusercontent.com/nimbix/image-common/master/install-nimbix.sh \
        | bash -s -- --setup-nimbix-desktop

#install meeps
RUN sudo apt-get install python3-meep-openmpi

# Expose port 22 for local JARVICE emulation in docker
EXPOSE 22

# for standalone use
EXPOSE 5901
EXPOSE 443
