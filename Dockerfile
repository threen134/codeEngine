FROM ubuntu:latest

RUN  apt update 
RUN  apt upgrade -y --allow-unauthenticated
RUN  apt install -y curl
COPY ./installer.sh .
RUN   chmod +x ./installer.sh
RUN  ./installer.sh
RUN  ibmcloud plugin install vpc-infrastructure 
COPY run.sh .
RUN chmod +x run.sh
CMD "./run.sh"