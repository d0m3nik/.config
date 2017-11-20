"""----------------------------------------------------------------------------- 
""" Python setup 
"""----------------------------------------------------------------------------- 
if has("win32")
  let g:python3_host_prog='D:/Anaconda3/envs/neovim3/python.exe'
  let g:python_host_prog='D:/Anaconda3/envs/neovim/python.exe'
elseif has("mac")
  let g:python3_host_prog=expand('$HOME/anaconda/envs/neovim3/bin/python3')
  let g:python_host_prog=expand('$HOME/anaconda/envs/neovim/bin/python')
else
  let g:python3_host_prog=expand('$HOME/envs/neovim3/bin/python3')
  let g:python_host_prog=expand('$HOME/envs/neovim/bin/python')
endif


"""----------------------------------------------------------------------------- 
""" Plugins 
"""----------------------------------------------------------------------------- 
if &compatible
  set nocompatible
endif

if (!isdirectory(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim")))
  if has("win32")
    call system(expand("md $HOME\.config\nvim\repos\github.com"))
  else
    call system(expand("mkdir -p $HOME/.config/nvim/repos/github.com"))
  endif
  call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
endif

set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim/
if dein#load_state('~/.config/nvim')
  call dein#begin(expand('~/.config/nvim'))
  call dein#add(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
  call dein#add('tpope/vim-fugitive')
  call dein#add('endel/vim-github-colorscheme')
  call dein#add('tomasr/molokai')
  call dein#add('scrooloose/nerdtree')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('tpope/vim-surround')
  call dein#add('tomtom/tcomment_vim')
  call dein#add('tpope/vim-markdown', {'on_ft': 'markdown'})
  "call dein#add('neovim/node-host', {'build': 'npm install'})
  "call dein#add('vimlab/mdown.vim', {'build': 'npm install'})
  call dein#add('shime/vim-livedown')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('zchee/deoplete-jedi', {'on_ft': 'python'})
  call dein#add('hkupty/iron.nvim')
  call dein#add('Shougo/denite.nvim')
  call dein#add('vim-airline/vim-airline')
  call dein#end()
  if dein#check_install()
    call dein#install()
    let pluginsExist=1
  endif
  call dein#save_state()
endif

"""----------------------------------------------------------------------------- 
""" General settings 
"""----------------------------------------------------------------------------- 
filetype plugin indent on
syntax enable
colorscheme github
set noswapfile
set tabstop=2 shiftwidth=2 expandtab
set number
set numberwidth=2
set clipboard+=unnamedplus
set undofile
set undodir="$HOME/.VIM_UNDO_FILES"
" Remember cursor position between vim sessions
autocmd BufReadPost *
            \ if line("'\"") > 0 && line ("'\"") <= line("$") |
            \   exe "normal! g'\"" |
            \ endif

"""----------------------------------------------------------------------------- 
""" Key mappings 
"""-----------------------------------------------------------------------------
let mapleader = ','
nnoremap <silent> <leader>o :Denite file_rec<CR>
nnoremap <silent> <leader>b :Denite buffer<CR>
nnoremap <silent> <leader>f :Denite grep<CR>
nnoremap <silent> <leader>c :Denite command_history<CR>
tmap <esc> <c-\><c-n><esc><cr>


"""----------------------------------------------------------------------------- 
""" Commands 
"""-----------------------------------------------------------------------------
command! Light :colorscheme github
command! Dark :colorscheme molokai

"""----------------------------------------------------------------------------- 
""" Denite 
"""----------------------------------------------------------------------------- 
call denite#custom#var('grep', 'command', ['pt'])
call denite#custom#var('file_rec', 'command', 
      \ ['pt', '--follow', '--hidden', '--nocolor', '--nogroup', '-g=', ''])
call denite#custom#var('grep', 'default_opts',
      \ ['--nogroup', '--hidden', '--nocolor', '--smart-case'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])
call denite#custom#map('insert','<C-j>','<denite:move_to_next_line>','noremap')
call denite#custom#map('insert','<C-k>','<denite:move_to_previous_line>','noremap')

"""----------------------------------------------------------------------------- 
""" Deoplete 
"""----------------------------------------------------------------------------- 
let g:deoplete#enable_at_startup=1


"""----------------------------------------------------------------------------- 
""" Livedown 
"""----------------------------------------------------------------------------- 
let g:livedown_autorun=1
if has("win32")
  let g:livedown_browser="chrome"
elseif has("mac")
  let g:livedown_browser="safari"
elseif has("unix")
  let g:livedown_browser="firefox"
endif


"""----------------------------------------------------------------------------- 
""" Iron 
"""----------------------------------------------------------------------------- 
"let g:iron_map_defaults=0
"augroup ironmapping
"  autocmd!
"  autocmd Filetype python nmap <buffer> <localleader>t <Plug>(iron-send-motion)
"  autocmd Filetype python vmap <buffer> <localleader>t <Plug>(iron-send-motion)
"  autocmd Filetype python nmap <buffer> <localleader>p <Plug>(iron-repeat-cmd)
"augroup END
