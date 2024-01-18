FROM python:3.10-slim-bullseye

USER root

#RUN apt-get update && apt-get install -y git procps sudo systemd systemctl iproute2 vim tree 
#RUN apt-get update && apt-get install -y git procps sudo systemd systemd-sysv iproute2 vim tree 
RUN apt-get update && apt-get install -y git procps sudo iproute2 vim tree 

# Style
RUN apt-get install -y bc fonts-powerline &&\
    git clone --recursive https://github.com/andresgongora/synth-shell.git &&\
    chmod +x synth-shell/setup.sh && cd synth-shell && ./setup.sh
COPY .devcontainer/resources/synth-shell/synth-shell-greeter.config /root/.config/synth-shell/

# Git
#RUN git config --global --add safe.directory /workspaces/oakestra

# COPY .devcontainer/entrypoint.sh /usr/local/bin/
# RUN chmod +x /usr/local/bin/entrypoint.sh
# CMD ["/usr/local/bin/entrypoint.sh"]


RUN apt-get clean ; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ; \
    rm -rf /lib/systemd/system/multi-user.target.wants/* ; \
    rm -rf /etc/systemd/system/*.wants/* ; \
    rm -rf /lib/systemd/system/local-fs.target.wants/* ; \
    rm -rf /lib/systemd/system/sockets.target.wants/*udev* ; \
    rm -rf /lib/systemd/system/sockets.target.wants/*initctl* ; \
    rm -rf /lib/systemd/system/sysinit.target.wants/systemd-tmpfiles-setup* ; \
    rm -rf /lib/systemd/system/systemd-update-utmp*

#CMD ["/lib/systemd/systemd"]
