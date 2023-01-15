# vim configuration for beginners

Author: Murphy Tian

all the setups based on intel chip mac. Basically, arm mac would work, but I'm not sure.

## Homebrew

a missing package manager for mac or linux. You could consider it as your app store, but achieved through command line, which is more friendly for users.

you should firstly open your terminal, iterm2 would be a better choice personally.

paste command below, you could install Homebrew successfully.

```shell
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## vim

- install `brew install vim`

- basic usage

  `i` insert mode

  `x` delete

  `dd` line deletion

  `esc` exit current mode

  `:q!` force quit

  `:wq` quit and save  

- configuration

  `vim ~/.vimrc` 

  ```
  set tabstop=4
  set shiftwidth=4
  set expandtab
  set number
  set mouse=a
  set smartindent
  set showmatch
  
  syntax on
  filetype on
  ```

  ./vimrc could configure your vim personally, every needs different configuration, plugins based on yourself, but I recommand NERDTree, which is a file plugin that allows your to visualize your file hierarchy through vim.
  
- plug

  I prefer using plug-in

  run this cmd on your terminal:
  
  ```
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```
  
  then, at your home directory, vim .vimrc
  
  ```
  call plug#begin()
  	Plug 'preservim/nerdtree'
  call plug#end()
  ```
  
  :wq and open vim
  
  `:PlugStatus`
  
  `:PlugInstall`
  
  then, reopen .vimrc
  
  ```
  " Start NERDTree and leave the cursor in it
  autocmd VimEnter * NERDTree
  ```
  
  you can run NERDTree plugin successfully!
