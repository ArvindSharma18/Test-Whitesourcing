FROM python:latest
# ENTRYPOINT [ "tail" ]
# CMD [ "-f","/dev/null" ]
# USER root
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN apt autoremove && apt autoclean -y
RUN rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin
RUN apt-get update -y && apt-get upgrade -y
CMD [ "echo","Image done" ]