# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
umask 022

export LANG=en_US.UTF-8

if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi

export EDITOR=vi

# http://qiita.com/delphinus/items/b04752bb5b64e6cc4ea9
export LESS='-i -M -R'

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

if [ -d "$HOME/.pyenv" ]; then
	export PYENV_ROOT="$HOME/.pyenv"
	export PATH="$PYENV_ROOT/bin:$PATH"
	eval "$(pyenv init -)"
	eval "$(pyenv virtualenv-init -)"
fi
