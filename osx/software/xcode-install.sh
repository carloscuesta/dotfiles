source './osx/utils.sh'

# xcode_install : Installing Xcode Command Line Tools (Git, compilers and other stuff)

xcode_install() {

	ask_for_confirmation "Would you like to install Xcode Command Line Tools (required) ?"

	if answer_is_yes; then
		xcode-select --install &> /dev/null
		while ! xcode-select -p &> /dev/null; do        
		    sleep 5
		done
		print_success 'Xcode Command Line Tools installed'
	else
		print_error 'Xcode Command Line Tools not installed'
	fi
	
}

xcode_install