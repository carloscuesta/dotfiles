source './osx/utils.sh'

# npm_packages : Asks to install these package through npm.
# Packages : bower, yeoman, gulp, grunt, webpack, less, jshint, jscs, csslint

npm_packages() {

	if cmd_exists "npm"; then

		print_in_blue "Updating npm ..."
		execute "npm update -g npm"

		print_in_blue "npm packages"

		npm_install "bower"
		npm_install "gulp"
		npm_install "grunt"
		npm_install "yo"
		npm_install "webpack"
		npm_install "less"
		npm_install "jshint"
		npm_install "jscs"
		npm_install "csslint"
	else
		print_error 'npm not installed (required to install node packages).'
	fi
}

npm_packages
