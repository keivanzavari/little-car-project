FROM ubuntu:18.04
LABEL authors="IVEX"

ENV DEBIAN_FRONTEND noninteractive
ENV PATH /opt/conda/bin:$PATH

RUN apt-get update \
    && apt-get install -y wget git zsh vim g++ make cmake tmux htop \
    && git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
    && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh \
    && /bin/bash ~/miniconda.sh -b -p /opt/conda \
    && rm ~/miniconda.sh \
    && /opt/conda/bin/conda clean -tipsy \
    && ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh \
    && echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.zshrc  \
    && echo "conda activate base" >> ~/.zshrc \
    && chsh -s /bin/zsh


RUN mkdir -p projects \
    && cd projects \
    && git clone https://github.com/autorope/donkeycar \
    && cd donkeycar \
    && git checkout master \
    && conda env create -f install/envs/ubuntu.yml

VOLUME /app
WORKDIR /app
