source './osx/utils.sh'

# Zshell : Sets ZSH as a OS X shell and installs Oh-My-ZSH

ZShell() {

	# Set ZSH as the OS X shell (better than bash).
	chsh -s /bin/zsh
	print_success 'changed to ZSH (shell)'

	# Installing Oh-My-ZSH
	cd ~
	curl -L http://install.ohmyz.sh | sh &> /dev/null
	while ! http://install.ohmyz.sh | sh &> /dev/null; do        
	    sleep 5
	done
	print_success 'Oh-My-Zsh Installed.'

}

ZShell