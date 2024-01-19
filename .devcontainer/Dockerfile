FROM ubuntu

# Install Dependencies
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install git build-essential curl libffi-dev libffi8ubuntu1 libgmp-dev libgmp10 libncurses-dev libncurses5 libtinfo5

# Install Haskell
RUN export BOOTSTRAP_HASKELL_NONINTERACTIVE=1 && export BOOTSTRAP_HASKELL_INSTALL_HLS=1 \
    && curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh 

# Add path variables
RUN  cat /root/.ghcup/env >> /etc/bash.bashrc

# Install additional tools
RUN apt-get -y install nano
