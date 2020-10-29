BREW_PATH=/goinfre/${USER}/brew

git clone https://github.com/Homebrew/brew.git ${BREW_PATH}

alias brew=${BREW_PATH}/bin/brew
brew install docker

alias docker=${BREW_PATH}/bin/docker
