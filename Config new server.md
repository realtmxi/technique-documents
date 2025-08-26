# Config new server

## Github

```
git config --global user.name  "Murphy Tian"
git config --global user.email "murphytian06@gmail.com"
git config --global core.editor vim
```



## conda

```shell
# 1. Run the following four commands to download and install the latest Linux installer for your chosen chip architecture. Line by line, these commands:
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm ~/miniconda3/miniconda.sh

# 2. Run the following four commands to download and install the latest Linux installer for your chosen chip architecture. Line by line, these commands:
source ~/miniconda3/bin/activate

# 3. Then, initialize conda on all available shells by running the following command:
conda init --all
```



## claude code

```sh
# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"

# Download and install Node.js:
nvm install 22

# Verify the Node.js version:
node -v # Should print "v22.18.0".
nvm current # Should print "v22.18.0".

# Verify npm version:
npm -v # Should print "10.9.3".

npm install -g @anthropic-ai/claude-code
```



## docker

```
snap install docker
```




