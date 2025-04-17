source './osx/utils.sh'

# brew_packages : Asks to install these package through brew.

osx_apps() {

	print_in_blue "Installing macOS apps."
	brew_cask_install "visual-studio-code"
	brew_cask_install "ghostty"
	brew_cask_install "rectangle"
	brew_cask_install "raycast"
}

osx_apps
