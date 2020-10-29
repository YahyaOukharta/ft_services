#export PATH="/goinfre/${USER}/brew/bin:$PATH:/goinfre/${USER}/k8"
BREW_PATH=/goinfre/${USER}/brew

# clone only if folder doesnt exist
if [ ! -d "${BREW_PATH}" ]; then git clone https://github.com/Homebrew/brew.git ${BREW_PATH}; fi

# install docker if doesnt exist
if [ ! -f "${BREW_PATH}/bin/docker" ]; then brew install docker; fi
