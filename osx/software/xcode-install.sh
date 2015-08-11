source './osx/utils.sh'

# xcode_install : Installing Xcode Command Line Tools (needed for Git, compilers and other stuff)

xcode_install() {

	ask_for_confirmation "Would you like to install Xcode Command Line Tools ?"

	if answer_is_yes; then
		print_success 'Xcode Command Line Tools installed'
		xcode-select --install &> /dev/null
		while ! xcode-select -p &> /dev/null; do        
		    sleep 5
		done
	else
		print_error 'Xcode Command Line Tools not installed'
	fi

}

xcode_install