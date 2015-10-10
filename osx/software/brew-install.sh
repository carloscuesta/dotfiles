source './osx/utils.sh'

# brew_install : Installing Homebrew (brew)

brew_install() {

	ask_for_confirmation "Would you like to install Homebrew (Brew) ?"

	if answer_is_yes; then
		ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
		if cmd_exists "brew"; then
			print_success 'Brew has been succesfully installed!'
		else
			print_error 'Brew not installed.'
		fi
	else
		print_error 'Brew not installed.'
	fi
}

brew_install
