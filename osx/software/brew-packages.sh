source './osx/utils.sh'

# brew_packages : Asks to install packages and software

brew_packages() {

	if cmd_exists "brew"; then 

		print_in_blue "Updating brew packages ..."
		execute "brew update"
		brew upgrade --all

		# Shell Specific
		
		print_in_blue ""
		brew_install "tree"

		# Developer 
		
		print_in_blue "Developer packages"
		brew_install "node"

		./osx/software/npm-packages.sh # bower, yeoman, gulp, grunt, webpack, less, jshint, jscs, csslint

		# OSX Software 
		
		print_in_blue "OS X Apps."
		./osx-apps.sh # sublime text 3, iterm2, smcfancontrol, spectacle, dropbox, slack, skype, gfxcardstatus

	else 
		print_error 'brew not installed, the packages cannot be installed without brew.'
		./osx/software/brew-install.sh
	fi
}

brew_packages