source './osx/utils.sh'

# brew_packages : Asks to install these package through brew.
# Packages : sublime text 3, iterm2, smcfancontrol, spectacle, dropbox, slack, skype, gfxCardStatus, firefoxdevedition

osx_apps() {

	print_in_blue "Installing brew cask."

	brew_install "caskroom/cask/brew-cask"
	brew_install "caskroom/versions"

	brew_cask_install "sublime-text3"
	brew_cask_install "iterm2"
	brew_cask_install "smcfancontrol"
	brew_cask_install "spectacle"
	brew_cask_install "dropbox"
	brew_cask_install "slack"
	brew_cask_install "skype"
	brew_cask_install "gfxcardstatus"
	brew_cask_install "google-chrome"	
	brew_cask_install "caskroom/versions/firefoxdeveloperedition"
}

osx_apps