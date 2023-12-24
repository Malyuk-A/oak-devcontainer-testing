FROM python:3.10-slim-buster

ARG USER_NAME
ARG UID

USER root

RUN apt-get update && apt-get install -y curl tar gcc git ca-certificates gnupg procps sudo vim tree

RUN adduser "${USER_NAME}" -u "${UID}" --shell /bin/bash
RUN usermod -aG sudo "${USER_NAME}"
RUN echo "${USER_NAME} ALL=(ALL) NOPASSWD:ALL" | tee -a /etc/sudoers

# # GO
# RUN curl -LO https://golang.org/dl/go1.21.5.linux-amd64.tar.gz && \
#     tar -C /usr/local -xzf go1.21.5.linux-amd64.tar.gz && \
#     rm go1.21.5.linux-amd64.tar.gz
# ENV GOROOT=/usr/local/go
# ENV GOPATH=$HOME/go
# ENV PATH=$GOPATH/bin:$GOROOT/bin:$PATH
# RUN go install -v golang.org/x/tools/gopls@latest

# # Docker
# RUN install -m 0755 -d /etc/apt/keyrings && \
#     curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyringdocker.gpg &&\
#     chmod a+r /etc/apt/keyrings/docker.gpg && \
#     echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
#     tee /etc/apt/sources.list.d/docker.list > /dev/null && \
#     apt-get update && apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Style
RUN apt-get install -y bc fonts-powerline &&\
    git clone --recursive https://github.com/andresgongora/synth-shell.git &&\
    chmod +x synth-shell/setup.sh && cd synth-shell && ./setup.sh
COPY .devcontainer/resources/synth-shell/synth-shell-greeter.config /root/.config/synth-shell/
RUN cp -r /root/.config /home/${USER_NAME}/
#COPY .devcontainer/resources/synth-shell/synth-shell-greeter.config /root/.config/synth-shell/

# Git
#RUN git config --global --add safe.directory /workspaces/oakestra


USER "${USER_NAME}"
