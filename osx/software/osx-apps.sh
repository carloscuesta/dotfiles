source './osx/utils.sh'

# brew_packages : Asks to install these package through brew.

osx_apps() {

	print_in_blue "Installing brew cask."

	brew_install "caskroom/cask/brew-cask"
	brew_install "caskroom/versions"

	brew_cask_install "visual-studio-code"
	brew_cask_install "iterm2"
	brew_cask_install "rectangle"
}

osx_apps
