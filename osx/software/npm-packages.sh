source './osx/utils.sh'

# npm_packages : Asks to install these package through npm.

npm_packages() {

	if cmd_exists "npm"; then

		print_in_blue "Updating npm ..."
		execute "npm update -g npm"

		print_in_blue "npm packages"

		npm_install "nodemon"
		npm_install "gulp"
		npm_install "webpack"
		npm_install "node-sass"
		npm_install "xo"
		npm_install "sass-lint"
    	npm_install "prettyjson"
        npm_install "gitmoji-cli"
        npm_install "react-native-cli"
	else
		print_error 'npm not installed (required to install node packages).'
	fi
}

npm_packages
