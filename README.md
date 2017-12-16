## Neovim Setup
Steps for setting up neovim on different platforms.

### Ubuntu Linux
Follow install setps given for [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) 

#### Setup python

```shell
$ sudo apt-get install python3-venv
$ virtualenv /home/dome/env/neovim3 --python=python3
$ source /home/dome/envs/neovim3/bin/activate
$ pip3 install neovim
$ virtualenv /home/dome/env/neovim --python=python
$ source /home/dome/envs/neovim/bin/activate
$ pip install neovim
```
#### Setup markdown preview
```shell
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
```
Run `npm install -g livedown`


### Windows
Download [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) binaries and place in PATH.

Clone repo [.config](https://github.com/d0m3nik/.config) and place the directory nvim into
$HOME/AppData/Local/nvim

#### Setup python 
```shell
conda create -n neovim python=2.7
activate neovim
conda install pip
pip install neovim jedi
deactivate
conda create -n neovim3 python=3.6
activate neovim
conda install pip
pip install neovim jedi
deactivate
```
Start neovim and run :CheckHealth

#### Setup markdown preview
Download [Node 8.9.1 LTS](https://nodejs.org/en) 
Run npm install -g livedown

#### Setup denite grep
Download [Pt](https://github.com/monochromegane/the_platinum_searcher/releases)
Place pt in $HOME/bin and add directory to PATH.

### Mac OS X
Install [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) with brew

#### Setup python 
```shell
conda create -n neovim python=2.7
source activate neovim
pip install neovim jedi
source deactivate
conda create -n neovim3 python=3.6
source activate neovim
pip install neovim jedi
source deactivate
```
Start neovim and run :CheckHealth

#### Setup markdown preview
Download [Node 8.9.1 LTS](https://nodejs.org/en) 
Run npm install -g livedown

#### Setup denite grep
Download [Pt](https://github.com/monochromegane/the_platinum_searcher/releases)
Place pt in $HOME/bin and add directory to PATH.


