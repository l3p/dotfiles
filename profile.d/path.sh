# on mac, no need to add those. To check again on ubuntu.
# export PATH="$PYENV_ROOT/bin:$HOME/.rbenv/bin:$PATH:/usr/texbin"

if [ -d ~/.linuxbrew/bin ]
then
  export PATH="$HOME/.linuxbrew/sbin:$HOME/.linuxbrew/bin:$PATH"
fi

export PATH="$HOME/bin:/usr/local/sbin:$PATH"

if [ -d /usr/local/texlive/2015basic/bin/x86_64-darwin ]
then
  export PATH=/usr/local/texlive/2015basic/bin/x86_64-darwin:$PATH
fi
