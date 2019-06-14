FROM centos/systemd:latest
COPY installer.sh tmp/installer.sh
COPY docker-entrypoint.sh tmp/docker-entrypoint.sh
RUN sh tmp/installer.sh
EXPOSE 2811/tcp
EXPOSE 2811/udp
EXPOSE 50000-51000/tcp
EXPOSE 50000-51000/udp
LABEL version="0.1"
LABEL description="This Docker image from the Enrico Fermi Institute contains resources for a GridFTP service."
ENTRYPOINT sh tmp/docker-entrypoint.sh 
