FROM python:3.10-slim-buster

USER root

#RUN apt-get update && apt-get install -y curl tar gcc git ca-certificates gnupg procps sudo vim tree
RUN apt-get update && apt-get install -y git procps vim tree 

# Style
RUN apt-get install -y bc fonts-powerline &&\
    git clone --recursive https://github.com/andresgongora/synth-shell.git &&\
    chmod +x synth-shell/setup.sh && cd synth-shell && ./setup.sh
COPY .devcontainer/resources/synth-shell/synth-shell-greeter.config /root/.config/synth-shell/

# Git
#RUN git config --global --add safe.directory /workspaces/oakestra
