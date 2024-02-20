FROM alpine:latest
RUN apk update

# Install some fonts to make a good experience in my env
# RUN apk add font-terminus 

# @TODO: Check if the following packages are really necessary.
RUN apk add curl tmux fd fzf zsh vim tree git xclip python3 nodejs \
            npm ninja-build gettext make cmake g++ zip unzip neovim \
            lazygit bottom go ripgrep alpine-sdk bash nerd-fonts \
            font-terminus font-dejavu

ENV LC_ALL en_IN.UTF-8
ENV LANG en_IN.UTF-8

# RUN apt install -y wget curl tmux fzf zsh vim tree git xclip python3 nodejs \
                   # npm ninja-build gettext make cmake g++ zip unzip neovim \
                   # ripgrep bash

# Cooperate NodeJS with Neovim.
RUN npm i -g neovim

# Install the environment to make a very good experience in my env
RUN sh -c "$(wget https://raw.githubusercontent.com/raphaellopes/env/refactor-with-lua/tools/install.sh -O -)"

