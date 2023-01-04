source './osx/utils.sh'

# volta-install : Installing Volta

volta_install() {

	ask_for_confirmation "Would you like to install Volta ?"
	if answer_is_yes; then
		curl https://get.volta.sh | zsh
		print_success 'Volta installed'
	else
		print_error 'Volta not installed'
	fi
}

volta_install
