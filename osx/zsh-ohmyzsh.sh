source './osx/utils.sh'

# Zshell : Sets ZSH as a OS X shell and installs Oh-My-ZSH

ZShell() {

	# Set ZSH as the OS X shell (better than bash).
	print_success 'Changing to ZSH (shell)'
	
	chsh -s /bin/zsh

	directory_backup "$HOME/.oh-my-zsh"
	
	# Installing Oh-My-ZSH
	cd ~
	curl -L http://install.ohmyz.sh | sh &> /dev/null
	
	# backing up zshrc and config file and theme incase exists, we are going to create .zshrc later
	file_exists "$HOME/.zshrc"
	file_exists "$HOME/.oh-my-zsh/themes/nico.zsh-theme"

	print_success 'Oh-My-Zsh Installed.'
}

ZShell