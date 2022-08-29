source './osx/utils.sh'

# git_config : Helps you to setup Git.

git_config() {

	if cmd_exists "git"; then
		print_question "Git global username: "
		read git_username
		execute "git config --global user.name '$git_username'"

		print_question "Git global email: "
		read git_email
		execute "git config --global user.email $git_email\n"
		print_success "Git setup -> Username: $git_username , Email: $git_email\n"
		
		print_question "Git global editor: "
		read git_editor
		execute "git config --global core.editor $git_editor --wait"
		
		print_question "Git signing key: "
		read git_signing_key
		execute "git config --global user.signingkey $git_signing_key"

		print_success "Git setup -> Username: $git_username , Email: $git_email\n, Editor: $git_editor\n"
	else
		print_error "Git is not installed, and cannot be configured now, install the Xcode Command Line Tools."
		./osx/software/xcode-install.sh
	fi
}

git_config
