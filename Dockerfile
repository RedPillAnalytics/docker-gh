FROM ubuntu

# Run the Update
RUN apt update -y
RUN apt upgrade -y
RUN apt install -y software-properties-common
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
RUN apt-add-repository -y https://cli.github.com/packages
RUN apt install -y gh

ENTRYPOINT ["gh"]
