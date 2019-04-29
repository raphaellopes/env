# env

The instructions bellow, was tested on Ubuntu >= 18.04


## Dependency

[Install Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) 
based on your OS system:

Neovim has been added to a "Personal Package Archive" (PPA). This allows you 
to install it with apt-get.

To be able to use add-apt-repository you may need to install 
software-properties-common:

```shell
sudo apt-get install software-properties-common
```

Run the following commands to install neovim:

```shell
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
```

Prerequisites for the Python modules:

```shell
sudo apt-get install python-dev python-pip python3-dev python3-pip
```


## Install environment

```shell
$ sh -c "$(wget https://raw.github.com/raphaellopes/env/master/tools/install.sh -O -)"
```

