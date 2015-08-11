source './osx/utils.sh'

# Zshell : Sets ZSH as a OS X shell and installs Oh-My-ZSH

ZShell() {

	# Set ZSH as the OS X shell (better than bash).
	chsh -s /bin/zsh
	print_success 'changed to ZSH (shell)'
	
	# Installing Oh-My-ZSH
	cd ~
	curl -L http://install.ohmyz.sh | sh &> /dev/null
	# test <-
	while ! http://install.ohmyz.sh | sh &> /dev/null; do        
	    sleep 5
	done
	
	# backing up zshrc config file incase exists, we are going to create .zshrc later
	
	if [ -f $HOME/.zshrc ]; then
		execute "mv $HOME/.zshrc $HOME/.zshrc-backup"
		print_in_blue ".zshrc backed up ~/.zshrc-backup\n"
	fi

	print_success 'Oh-My-Zsh Installed.'
}

ZShell