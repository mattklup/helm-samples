# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.192.0/containers/codespaces-linux/.devcontainer/base.Dockerfile

FROM mcr.microsoft.com/vscode/devcontainers/universal:1-focal

USER root

RUN curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.12.0/kind-linux-amd64 && \
  chmod +x ./kind && \
  mv ./kind /usr/local/bin/

RUN curl -Lo ./sops https://github.com/mozilla/sops/releases/download/v3.7.2/sops-v3.7.2.linux.amd64 && \
  chmod +x ./sops && \
  mv ./sops /usr/local/bin/
 
USER codespace

RUN curl -s https://fluxcd.io/install.sh | bash
