# iterm2 personal configuration guide

## 1. install

`brew install iterm2`

## 2. oh-my-zsh

Usually, your mac shell is bach, but zsh has more powerful features than bash.

And we could use oh-my-zsh to enrich our zsh.

- install oh-my-zsh

  `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

- check you shell

  `cat /etc/Shells` 

  you could check all of your shells through this command

- set your default shell as zsh

  `chsh -s /bin/zsh`

## 3. theme

`vim ~/.zshrc`

assumly you know about how to use vim, otherwise, go to another instruction 'vim-configuration-for-beginners'.

go to the line of 'ZSH_THEME="ys"', change "ys" into some of your favorite theme.

I like "agnoster" theme, thus, `ZSH_THEME="agnoster"`. 

Then, if your configure your vim with tokyo night theme, you can also configure it here.

you could follow instructions under the link. https://iterm2colorschemes.com/

## 4. font

you need download specific font to avoid case that you cannot decode

```
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts 
```

open your iterm2 preference, profiels -> Text -> Font

chose 'Meslo LG M Regular for Powerline' font.



## 5. Plug-Ins

- syntax-highlighting plugin

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

`vim ~/.zshrc`

`plugins=(zsh-syntax-highlighting)`

- autocomplete

  `git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions`

​	`vim ~/.zshrc`

`plugins=(zsh-syntax-highlighting zsh-autosuggestions)`

## 6. others

- you could set backgrounds by yourself in preferences->profiles->window
- you could show status bar in your termial
- you could directly connect ssh, or you could achieve through autocomplete and password suggestions
