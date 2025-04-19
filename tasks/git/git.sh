set -euo pipefail
source "$UTILS"

SSH_CONFIG_DIR="$HOME/.ssh"
SSH_CONFIG_FILE="$HOME/.ssh/config"

create_config_files() {
  print_info "Creating Git configuration files"

  for file in $EXECUTION_DIR/tasks/git/.{gitconfig,gitignore}; do
    execute "cp -iv "$file" $HOME/"
  done;
  unset file;

  print_success "Git configuration files created"
}

git_config() {
  local ssh_config_template="$EXECUTION_DIR/tasks/git/ssh-config"

  if cmd_exists "git"; then
    print_question "Git global username: "
    read git_username
    execute "git config --global user.name '$git_username'"

    print_question "Git global email: "
    read git_email
    execute "git config --global user.email $git_email\n"
    print_success "Git setup -> Username: $git_username , Email: $git_email\n"

    print_question "Git SSH key name: "
    read git_ssh_key_name
    ssh-keygen -t ed25519 -C "$git_email" -f "$SSH_CONFIG_DIR/$git_ssh_key_name"

    # https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key#telling-git-about-your-ssh-key
    print_question "Git signing key path (SSH): "
    read git_signing_key_path
    execute "git config --global gpg.format ssh"
    execute "git config --global user.signingkey $git_signing_key_path"

    print_info "Creating SSH config file"
    execute "cp -iv $ssh_config_template $SSH_CONFIG_FILE"
    sed "s/{{SSH_KEY_NAME}}/$git_ssh_key_name/g" "$ssh_config_template" > "$SSH_CONFIG_FILE"
    print_success "SSH config created: $SSH_CONFIG_FILE"
    
    print_info "Adding SSH key to the ssh-agent"
    eval "$(ssh-agent -s)"
    ssh-add --apple-use-keychain $SSH_CONFIG_DIR/$git_ssh_key_name
    print_success "SSH key added to the ssh-agent"

    print_info "Add SSH key and signing key to GitHub"
    pbcopy < $SSH_CONFIG_DIR/$git_ssh_key_name.pub
    print_info "SSH key copied to clipboard, please add it to GitHub"
    open https://github.com/settings/ssh/new
    print_success "SSH key and signing key added to GitHub"

    print_success "Git setup -> Username: $git_username , Email: $git_email\n"
  else
    print_error "Git is not installed, and cannot be configured now, install the Xcode Command Line Tools."
  fi
}

main() {
  create_config_files
  git_config
}

main
