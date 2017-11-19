## Neovim Setup
Steps for setting up neovim on different platforms.

### Ubuntu Linux
Follow install setps given for [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) 

### Windows
Download [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) binaries and place in PATH.

Clone repo [dotfiles](https://github.com/d0m3nik/dotfiles) and place the directory nvim into
$HOME/AppData/Local/nvim

#### Setup python 
```
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
Place pt.exe C:\Program Files\pt and add directory to PATH.




