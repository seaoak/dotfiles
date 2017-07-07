# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
umask 022

LANG=en_US.UTF-8
export LANG

EDITOR=vi
export EDITOR

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

if [ -d "$HOME/perl5/perlbrew" ]; then
	if [ -f "$HOME/perl5/perlbrew/etc/bashrc" ]; then
		. ~/perl5/perlbrew/etc/bashrc
	fi
fi

if [ -d "$HOME/.nvm" ]; then
	NVM_DIR="$HOME/.nvm"
	export NVM_DIR
	if [ -s "$NVM_DIR/nvm.sh" ]; then
		. "$NVM_DIR/nvm.sh"
	fi
fi

if [ -d "$HOME/.pyenv" ]; then
	PYENV_ROOT="$HOME/.pyenv"
	export PYENV_ROOT
	PATH="$PYENV_ROOT/bin:$PATH"
	export PATH
	eval "$(pyenv init -)"
	if [ -d "$HOME/.pyenv/plugins/pyenv-virtualenv" ]; then
		eval "$(pyenv virtualenv-init -)"
	fi
fi
