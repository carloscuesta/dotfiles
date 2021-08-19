source './osx/utils.sh'

# nvm_install : Installing NVM

nvm_install() {

	ask_for_confirmation "Would you like to install NVM ?"
	if answer_is_yes; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | zsh
		print_success 'NVM installed'
	else
		print_error 'NVM not installed'
	fi
}

nvm_install
