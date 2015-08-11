source './osx/utils.sh'

# git_config : Helps you to setup Git.

git_config() {

	if cmd_exists "git"; then 
		print_question "Git global username: "
		read git_username
		git config --global user.name "$git_username"

		print_question "Git global email: "
		read git_email
		git config --global user.email $git_email
		print_success "Git setup -> Username: $git_username , Email: $git_email"
	else 
		print_error "Git is not installed, and cannot be configured now, install the Xcode Command Line Tools."
	fi	
	
}

git_config