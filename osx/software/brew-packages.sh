source './osx/utils.sh'

# brew_packages : Asks to install these package through brew cask.
# Packages : iterm2, smcfancontrol, spectacle, dropbox, slack, skype

brew_packages() {

	if cmd_exists "brew"; then 

		execute "brew update"
		brew upgrade --all

		# Shell Specific

		ask_for_confirmation "Would you like to install tree ?"
		if answer_is_yes; then
			execute "brew install tree" # This installs `npm` too using the recommended installation method
			print_success 'tree installed.'
		else
			print_error 'tree not installed.'
		fi

		# Developer 

		ask_for_confirmation "Would you like to install Node and npm ?"
		if answer_is_yes; then
			execute "brew install node" # This installs `npm` too using the recommended installation method
			print_success 'node installed.'
		else
			print_error 'node not installed.'
		fi

		# OSX Software 

		print_in_blue "Installing brew cask."
		execute "brew install caskroom/cask/brew-cask"
		execute "brew tap caskroom/versions"

		ask_for_confirmation "Would you like to install iterm2 ?"
		if answer_is_yes; then
			execute "brew cask install iterm2"
			print_success 'iterm2 installed.'
		else
			print_error 'iterm2 not installed.'
		fi

		ask_for_confirmation "Would you like to install skype ?"
		if answer_is_yes; then
			execute "brew cask install skype"
			print_success 'skype installed.'
		else
			print_error 'skype not installed.'
		fi

		ask_for_confirmation "Would you like to install smcfancontrol ?"
		if answer_is_yes; then
			execute "brew cask install smcfancontrol"
			print_success 'smcfancontrol installed.'
		else
			print_error 'smcfancontrol not installed.'
		fi

		ask_for_confirmation "Would you like to install spectacle ?"
		if answer_is_yes; then
			execute "brew cask install spectacle"
			print_success 'spectacle installed.'
		else
			print_error 'spectacle not installed.'
		fi

		ask_for_confirmation "Would you like to install dropbox ?"
		if answer_is_yes; then
			execute "brew cask install dropbox"
			print_success 'dropbox installed.'
		else
			print_error 'dropbox not installed.'
		fi

		ask_for_confirmation "Would you like to install slack ?"
		if answer_is_yes; then
			execute "brew cask install slack"
			print_success 'slack installed.'
		else
			print_error 'slack not installed.'
		fi

		ask_for_confirmation "Would you like to install skype ?"
		if answer_is_yes; then
			execute "brew cask install skype"
			print_success 'skype installed.'
		else
			print_error 'skype not installed.'
		fi

	else 
		print_error 'brew not installed, the packages cannot be installed without brew.'
		./osx/software/brew-install.sh
	fi
}

brew_packages